import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../config/Colors.dart';

class EducationListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15, bottom: 0, right: 15),
          child: Text(
            "Ansarudeen Comprehensive High School",
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
                        Text("2010 - 2013")
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
                        Text("Senior Secondary School Certificate (SSCE)")
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
                        Text("Arts")
                      ]))
            ]))
      ],
    );
  }
}
