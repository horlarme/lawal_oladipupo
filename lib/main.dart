import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/screens/firstPage.dart';
import 'screens/splashScreen.dart';

void main() => runApp(LawalOladipupo());

class LawalOladipupo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        "/splash": (BuildContext context) => SplashScreen(),
        "first_page" : (context) => FirstPage(),
      },
      title: "Lawal Oladipupo",
    );
  }
}
