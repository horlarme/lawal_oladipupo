import 'dart:convert';

import 'package:countdown/countdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lawal_oladipupo/screens/firstPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var profile;

  @override
  void initState() {
    super.initState();

    _startCountDown();
  }

  Duration waitTime = Duration(seconds: 2);

  int remainingSec;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(144, 123, 73, 1),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
          new Flexible(
            flex: 7,
            child: new Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                        child: Image.asset(
                      'assets/images/lawal.jpeg',
                      width: 220,
                      height: 220,
                      fit: BoxFit.cover,
                    )),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "Lawal Oladipupo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'My personal profile aplication.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }

  void _goToFirstPage() {
    Navigator.pushReplacement(context, MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return new FirstPage(data: this.profile);
      },
    ));
  }

  void _startCountDown() {
    CountDown countdown = CountDown(waitTime);

    var sub = countdown.stream.listen(onData);

    sub.onDone(() {
      sub.cancel();
      _fetchJson();
    });
  }

  void onData(Duration duration) {
    if (waitTime.inSeconds == duration.inSeconds) return;
    //Want to change the state only if there's different with the times
    if (remainingSec == duration.inSeconds) return;

    setState(() {
      remainingSec = duration.inSeconds;
    });
  }

  _fetchJson() async {
    print('started fetching data');
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/lawal.oladipupo.json");

    this.profile = json.decode(data);

    _goToFirstPage();
  }
}
