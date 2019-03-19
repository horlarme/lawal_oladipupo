import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/widgets/CustomCircularLoading.dart';
import 'package:lawal_oladipupo/widgets/ProfileRow.dart';

class BasicProfileTabView extends StatefulWidget {
  @override
  _BasicProfileTabView createState() => new _BasicProfileTabView();
}

class _BasicProfileTabView extends State<BasicProfileTabView> {
  bool _loading = true;

  List<Widget> _data = [
    Padding(
      padding: EdgeInsets.all(20),
      child: ClipOval(
          child: Image.asset(
            'assets/images/lawal.jpeg',
            width: 220,
            height: 220,
            fit: BoxFit.cover,
          )),
    ),
    ProfileRow("Full Name", "Lawal Oladipupo"),
    ProfileRow("Gender", "Male"),
    ProfileRow("Spoken Languages", "English & Yoruba"),
    ProfileRow("Date of Birth", "January 22, 1996"),
    ProfileRow("Continent", "Africa"),
    ProfileRow("Nationality", "Nigeria"),
    ProfileRow("State of Origin", "Oyo State"),
  ];

  @override
  void initState() {
    super.initState();

    _startDataFetching();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return CustomCircularLoading(text: "Basic Profile");
    } else {
      return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[_data[index], new Divider()],
            );
          });
    }
  }

  void _startDataFetching() {
    setState(() {
      _loading = false;
    });
  }
}
