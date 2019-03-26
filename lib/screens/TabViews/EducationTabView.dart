import 'package:flutter/material.dart';
import '../../widgets/EducationListItem.dart';

class EducationTabView extends StatefulWidget {
  final user;

  EducationTabView({Key key, this.user}) : super(key: key);

  @override
  _EducationTabView createState() => new _EducationTabView();
}

class _EducationTabView extends State<EducationTabView> {
  List<Widget> educationsWidget = [];

  _buildWidgets() {
    var educations = widget.user['education'] as List<dynamic>;

    return educations.forEach((education) {
      return educationsWidget.add(
          EducationListItem(
            school: education['school'],
            certification: education['certification'],
            duration: education['duration'][0] + " - " +
                education['duration'][1],
            department: education['department'],
          )
      );
    });
  }

  @override
  void initState() {
    super.initState();

    _buildWidgets();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        itemCount: educationsWidget.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[educationsWidget[index], new Divider()],
          );
        });
  }
}
