import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../config/Colors.dart';

class EducationListItem extends StatelessWidget {
  final String school;
  final String duration;
  final String certification;
  final String department;

  const EducationListItem(
      {Key key,
      this.school,
      this.duration,
      this.certification,
      this.department})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15, bottom: 0, right: 15),
          child: Text(
            school,
            style: TextStyle(
                fontSize: 15, color: ascentColor, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "Duration".toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(duration)
                      ])),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "Certification".toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(certification)
                      ])),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "Department".toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(department)
                      ]))
            ]))
      ],
    );
  }
}
