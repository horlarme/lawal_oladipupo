import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/widgets/CustomCircularLoading.dart';

class BasicProfileTabView extends StatefulWidget {
  @override
  _BasicProfileTabView createState() => new _BasicProfileTabView();
}

class _BasicProfileTabView extends State<BasicProfileTabView> {
  bool _loading = true;

  List<Widget> _data = [
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
    Text("This is the first"),
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
          padding: const EdgeInsets.all(15),
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index) {
            if (index.isOdd) return Divider();

            return _data[index];
          });
    }
  }

  void _startDataFetching() {
    setState(() {
      _loading = false;
    });
  }
}
