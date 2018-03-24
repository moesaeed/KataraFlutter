import 'package:flutter/material.dart';
import 'package:tab_bar_navigation/FirstPage.dart' as First;
import 'package:tab_bar_navigation/SecondPage.dart' as Second;
import 'package:tab_bar_navigation/ThirdPage.dart' as Third;
import 'dart:io';
import 'dart:convert';

void main() {
  runApp(new MyTabs());
}

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => new _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedTab = 0;


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> myTabs = <Tab>[
    new Tab(
      icon: new Icon(Icons.home),
      text: "Home",
    ),
    new Tab(
      icon: new Icon(Icons.settings),
      text: "Settings",
    ),
    new Tab(
      icon: new Icon(Icons.announcement),
      text: "Info",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tab Bar",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(myTabs[_tabController.index].text),
          backgroundColor: Colors.blueGrey,
        ),
        bottomNavigationBar: new Material(
          color: Colors.blueGrey,
          child: new TabBar(controller: _tabController, tabs: myTabs),
        ),
        body: new TabBarView(controller: _tabController, children: <Widget>[
          new First.FirstPage(),
          new Second.SecondPage(),
          new Third.ThirdPage()
        ]),
      ),
    );
  }

  void _handleTabSelection() {
    setState(() {
      _selectedTab = _tabController.index;
    });
  }
}




