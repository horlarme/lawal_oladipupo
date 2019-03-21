import 'package:flutter/material.dart';
import '../../widgets/EducationListItem.dart';

class EducationTabView extends StatefulWidget {
  @override
  _EducationTabView createState() => new _EducationTabView();
}

class _EducationTabView extends State<EducationTabView> {
  List<Widget> _data = [
    EducationListItem(),
    EducationListItem(),
    EducationListItem(),
    EducationListItem(),
  ];

  @override
  void initState() {
    super.initState();
  }

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
}
