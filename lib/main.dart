import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/config/Colors.dart';
import 'package:lawal_oladipupo/screens/firstPage.dart';
import 'screens/splashScreen.dart';

void main(){
  Admob.initialize("ca-app-pub-3940256099942544~3347511713");
  runApp(LawalOladipupo());
}

class LawalOladipupo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        accentColor: ascentColor
      ),
      routes: <String, WidgetBuilder>{
        "/splash": (BuildContext context) => SplashScreen(),
        "first_page" : (context) => FirstPage(),
      },
      title: "Lawal Oladipupo",
    );
  }
}
