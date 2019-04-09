import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Rate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black12
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipOval(
                  child: Image.asset(
                'assets/images/lawal.jpeg',
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              )),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Lawal Oladipupo",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Web Developer",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 13),
                        )
                      ])),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              SizedBox(
                  width: 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                      Icon(Icons.stars)
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width - 80,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 14),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
