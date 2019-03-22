import "package:flutter/widgets.dart";
import "package:flutter/material.dart";
import 'package:lawal_oladipupo/screens/TabViews/BasicProfileTabView.dart';
import 'package:lawal_oladipupo/screens/TabViews/EducationTabView.dart';
import 'package:lawal_oladipupo/screens/TabViews/SkillsTabView.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() => new _FirstPage();
}

List<Tab> tabList = [
  Tab(text: "Basic"),
  Tab(text: "Education"),
  Tab(text: "Tech Stack"),
  Tab(text: "Photos"),
  Tab(text: "Quotes"),
];

List<Widget> tabViews = [
  BasicProfileTabView(),
  EducationTabView(),
  SkillsTabView(),
  BasicProfileTabView(),
  BasicProfileTabView(),
];

class _FirstPage extends State<FirstPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(144, 123, 73, 1),
        title: Text("Lawal Oladipupo"),
        bottom: TabBar(
          tabs: tabList,
          indicatorColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabViews.map((Widget view)=> view).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToContactPage,
        child: Icon(Icons.contact_mail),
        backgroundColor: Color.fromRGBO(144, 123, 73, 1),
        tooltip: "Contact Lawal",
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: tabList.length, vsync: this);
  }

  void _goToContactPage() {
    print("Going to contact page");
  }
}
