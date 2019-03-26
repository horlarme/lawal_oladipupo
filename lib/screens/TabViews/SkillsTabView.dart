import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/widgets/SkillRow.dart';

class SkillsTabView extends StatefulWidget {

  final user;

  SkillsTabView({Key key, @required this.user}) : super(key: key);

  @override
  _SkillsTabViewState createState() => _SkillsTabViewState();
}

class _SkillsTabViewState extends State<SkillsTabView> {

  List<Widget> _data = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[_data[index], new Divider()],
          );
        });
  }

  @override
  void initState() {
    super.initState();

    _buildSkillDataWidget();
  }

  void _buildSkillDataWidget() async {
    List stacks = widget.user['skills'] as List;

    stacks.forEach((skill){
      return _data.add(
        SkillRow(
          position: skill['level'],
          skill: skill['name'],
          info: skill['description']
        )
      );
    });
  }
}
