import "package:flutter/widgets.dart";
import "package:flutter/material.dart";

class CustomCircularLoading extends StatelessWidget {
  final text;

  const CustomCircularLoading({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              (text != null) ? text : "Loading...",
              style: TextStyle(fontSize: 14),
            ))
      ],
    )));
  }
}
