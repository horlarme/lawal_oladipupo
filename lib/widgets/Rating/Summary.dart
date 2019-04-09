import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lawal_oladipupo/config/Colors.dart';

class Summary extends StatelessWidget {
  final int ratings;

  Summary({Key key, this.ratings}) : super(key: key);

  //create starts by the number of ratings provided
  getStars() {
    List<Widget> stars = [];

    //if rating doesn't have any value
    if (this.ratings != null) {
      for (var i = 1; i <= this.ratings; i++) {
        stars.add(Icon(Icons.stars));
      }
    }

    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "ratings".toUpperCase(),
                  style: TextStyle(
                      color: textColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  this.ratings != null ? this.ratings.toString() : "0",
                  style: TextStyle(
                      color: ascentColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "STARs".toUpperCase(),
                  style: TextStyle(color: textColor, fontSize: 13),
                )
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: this.getStars()),
            Container(
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 2)),
              ),
              child: RaisedButton(
                onPressed: () {
                  print("onTap called.");
                },
                color: Colors.black,
                splashColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.rate_review, color: Colors.white),
                    Text(
                      " Rate User",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
