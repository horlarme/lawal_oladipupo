import 'package:flutter/material.dart';
import '../../widgets/EducationListItem.dart';

class EducationTabView extends StatefulWidget {
  @override
  _EducationTabView createState() => new _EducationTabView();
}

class _EducationTabView extends State<EducationTabView> {
  List<Widget> _data = [
    EducationListItem(
      school: "Ansarudeen Comprehensive High School",
      certification: "Senior Secondary Certificate (SSCE)",
      department: "Art",
      duration: "2010 - 2013",
    ),
    EducationListItem(
      school: "Anglican Grammar School",
      certification: "Junior Secondary Certificate (JSCE)",
      department: "NOT APPLICABLE",
      duration: "2007 - 2010",
    ),
    EducationListItem(
      school: "Saint James Anglican Primary School",
      certification: "First School Leaving Certificate (FSLC)",
      department: "NOT APPLICABLE",
      duration: "2006 - 2007",
    ),
    EducationListItem(
      school: "Seventh-Day Adventise Primary School",
      certification: "NOT APPLICABLE",
      department: "NOT APPLICABLE",
      duration: "2000 - 2006",
    ),
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
