import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../config/Colors.dart';

class ProfileRow extends StatelessWidget {
  final String label;
  final String value;

  ProfileRow(this.label, this.value, {Key key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15,bottom: 10),
            child: Text(label,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ascentColor,
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ))),
        Padding(
            padding: EdgeInsets.only(top: 0, left: 15, right: 15,bottom: 0),
            child: Text(value,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: textColor,
                  letterSpacing: 2,
                  fontSize: 14,
                ))),
      ],
    );
  }
}
