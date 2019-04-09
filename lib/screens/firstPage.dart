import 'package:admob_flutter/admob_flutter.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:lawal_oladipupo/config/Colors.dart';
import 'package:lawal_oladipupo/helpers/user.dart';
import 'package:lawal_oladipupo/screens/TabViews/BasicProfileTabView.dart';
import 'package:lawal_oladipupo/screens/TabViews/EducationTabView.dart';
import 'package:lawal_oladipupo/screens/TabViews/ReviewsTab.dart';
import 'package:lawal_oladipupo/screens/TabViews/SkillsTabView.dart';

class FirstPage extends StatefulWidget {
  final data;

  FirstPage({Key key, this.data}) : super(key: key);

  @override
  _FirstPage createState() => new _FirstPage();
}

class _FirstPage extends State<FirstPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: tabList.length, vsync: this);
  }

  List<Tab> tabList = [
    Tab(text: "Basic"),
    Tab(text: "Education"),
    Tab(text: "Work Experience"),
    Tab(text: "Tech Stack"),
    Tab(text: "Reviews"),
  ];

  List<Widget> tabViews() => [
        BasicProfileTabView(user: widget.data),
        EducationTabView(user: widget.data),
        EducationTabView(user: widget.data),
        SkillsTabView(user: widget.data),
        ReviewsTab(user: widget.data)
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(144, 123, 73, 1),
        title: Text(getFullName(widget.data)),
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
      bottomNavigationBar: AdmobBanner(
        adUnitId: 'ca-app-pub-3940256099942544/6300978111',
        adSize: AdmobBannerSize.BANNER,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        elevation: 4,
        foregroundColor: ascentColor,
        onPressed: null,
        backgroundColor: Colors.white,
        tooltip: "Open Menu for " + getFullName(widget.data),
      ),
    );
  }
}
