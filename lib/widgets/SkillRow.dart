import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lawal_oladipupo/config/Colors.dart';

class SkillRow extends StatelessWidget {
  final String info;

  final double position;

  final String skill;

  const SkillRow({Key key, this.info, this.position, this.skill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              skill,
              style: TextStyle(
                  color: ascentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.8),
            )),
        Padding(
            padding: EdgeInsets.only(top: 0, bottom: 5, right: 10, left: 10),
            child: LinearProgressIndicator(
              backgroundColor: Color.alphaBlend(Colors.white, ascentColor),
              value: (position != null) ? position : 0.5,
            )),
        Padding(
            padding: EdgeInsets.only(top: 5, bottom: 10, right: 10, left: 10),
            child: Text(
              info,
              textAlign: TextAlign.justify,
            ))
      ],
    );
  }
}
