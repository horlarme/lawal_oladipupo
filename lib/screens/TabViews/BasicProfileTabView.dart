import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:lawal_oladipupo/helpers/user.dart';
import 'package:lawal_oladipupo/widgets/ProfileRow.dart';

class BasicProfileTabView extends StatefulWidget {
  final user;

  BasicProfileTabView({Key key, this.user}) : super(key: key);

  @override
  _BasicProfileTabView createState() => new _BasicProfileTabView();
}

class _BasicProfileTabView extends State<BasicProfileTabView> {
  List<Widget> _data() => [
        Padding(
          padding: EdgeInsets.all(20),
          child: DropCapText(
            widget.user['summary'],
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
        ProfileRow("Full Name", getFullName(widget.user)),
        ProfileRow("E-Mail Address", (widget.user['email'])),
        ProfileRow("Spoken Languages", writeLanguages(widget.user)),
        ProfileRow("Date of Birth", writeDateOfBirth(widget.user)),
        ProfileRow(
            "Continent", widget.user['continent'].toString().toUpperCase()),
        ProfileRow(
            "Nationality", widget.user['country'].toString().toUpperCase()),
        ProfileRow(
            "State of Origin", widget.user['state'].toString().toUpperCase()),
      ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        itemCount: _data().length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[_data()[index], new Divider()],
          );
        });
  }
}
