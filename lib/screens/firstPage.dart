import "package:flutter/widgets.dart";
import "package:flutter/material.dart";
import 'package:lawal_oladipupo/screens/TabViews/BasicProfileTabView.dart';
import 'package:lawal_oladipupo/screens/TabViews/EducationTabView.dart';
import 'package:lawal_oladipupo/screens/TabViews/SkillsTabView.dart';

class FirstPage extends StatefulWidget {
  final data;

  FirstPage({Key key, this.data}) : super(key: key);

  @override
  _FirstPage createState() => new _FirstPage();
}

List<Tab> tabList = [
  Tab(text: "Basic"),
  Tab(text: "Education"),
  Tab(text: "Tech Stack")
];

class _FirstPage extends State<FirstPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: tabList.length, vsync: this);
  }

  List<Widget> tabViews() => [
        BasicProfileTabView(user: widget.data),
        EducationTabView(user: widget.data),
        SkillsTabView(user: widget.data,)
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(144, 123, 73, 1),
        title: Text(widget.data['first_name'] + widget.data['last_name']),
        bottom: TabBar(
          tabs: tabList,
          indicatorColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabViews().map((Widget view) => view).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToContactPage,
        child: Icon(Icons.contact_mail),
        backgroundColor: Color.fromRGBO(144, 123, 73, 1),
        tooltip: "Contact " + widget.data['first_name'],
      ),
    );
  }

  void _goToContactPage() {
    print("Going to contact page");
  }
}
