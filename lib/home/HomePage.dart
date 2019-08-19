import 'package:flutter/material.dart';
import 'package:flutterlib/StatusBarUtils.dart';
import 'FirstPage.dart';
import 'FourthPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin,AutomaticKeepAliveClientMixin {
  var control;
  final tabs = [
    Tab(text: "项目1"),
    Tab(text: "项目2"),
    Tab(text: "项目3"),
    Tab(text: "项目4"),
    Tab(text: "项目5"),
  ];
  List<Widget> tabPages = [
    FirstPage(title: "首页"),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
    FirstPage(title: "首页")
  ];

  @override
  void initState() {
    super.initState();
    control = TabController(length: tabs.length, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          tabs: tabs,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicator: const BoxDecoration(),
          controller: control,
          isScrollable: true,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      body: TabBarView(controller: control, children: tabPages),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
