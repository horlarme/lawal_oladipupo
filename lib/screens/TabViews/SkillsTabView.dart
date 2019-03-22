import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/widgets/SkillRow.dart';

class SkillsTabView extends StatefulWidget {
  @override
  _SkillsTabViewState createState() => _SkillsTabViewState();
}

class _SkillsTabViewState extends State<SkillsTabView> {
  List<Widget> _data = [
    SkillRow(
        position: 0.4,
        skill: "Android (Java)",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.7,
        skill: "GraphQL",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.7,
        skill: "GraphQL",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.7,
        skill: "Javascript",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.8,
        skill: "ReactJS",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.6,
        skill: "Flutter (Android & iOS)",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.5,
        skill: "NodeJS (Android & iOS)",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.6,
        skill: "MongoDB",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.4,
        skill: "Python",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.8,
        skill: "MySQL",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.8,
        skill: "Laravel",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.9,
        skill: "Rest API",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 1,
        skill: "HTML (5)",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 1,
        skill: "CSS (3)",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.5,
        skill: "CodeIgniter",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
    SkillRow(
        position: 0.5,
        skill: "Wordpress",
        info: "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "),
  ];

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
