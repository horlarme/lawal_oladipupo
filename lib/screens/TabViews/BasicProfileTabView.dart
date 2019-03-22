import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/widgets/CustomCircularLoading.dart';
import 'package:lawal_oladipupo/widgets/ProfileRow.dart';
import 'package:drop_cap_text/drop_cap_text.dart';

class BasicProfileTabView extends StatefulWidget {
  @override
  _BasicProfileTabView createState() => new _BasicProfileTabView();
}

class _BasicProfileTabView extends State<BasicProfileTabView> {
  bool _loading = true;

  List<Widget> _data = [
    Padding(
      padding: EdgeInsets.all(20),
      child: DropCapText(
        "Lorem Ipsum is simply dummy text of the printing and "
            "typesetting industry. Lorem Ipsum has been the industry's standard "
            "dummy text ever since the 1500s, when an unknown printer took a galley "
            "of type and scrambled it to make a type specimen book. It has survived "
            "not only five centuries, but also the leap into electronic typesetting,"
            " remaining essentially unchanged. It was popularised in the 1960s with "
            "the release of Letraset sheets containing Lorem Ipsum passages, and more"
            "recently with desktop publishing software like Aldus PageMaker including "
            "versions of Lorem Ipsum.",
        textAlign: TextAlign.justify,
        dropCap: DropCap(
            width: 100,
            height: 100,
            child: Padding(
                padding: EdgeInsets.all(5),
                child: ClipOval(
                    child: Image.asset(
                  'assets/images/lawal.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )))),
      ),
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
