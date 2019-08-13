import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterlib_app/router/Routes.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';
import 'model/HomeModel.dart';

void main() {
  final router = new Router();
  Routes.configureRoutes(router);
  runApp(new MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List tabData = [
    {'text': '业界动态','icon': Icon(Icons.language),'page': FirstPage(title: "首页")},
    {'text': 'WIDGET', 'icon': Icon(Icons.extension), 'page': SecondPage()},
    {'text': '组件收藏', 'icon': Icon(Icons.favorite), 'page': ThirdPage()},
    {'text': '关于手册', 'icon': Icon(Icons.import_contacts), 'page': FourthPage()}
  ];
  List<BottomNavigationBarItem> myTabs = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(BottomNavigationBarItem(
        icon: tabData[i]['icon'],
        title: Text(
          tabData[i]['text'],
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabData[_currentIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: myTabs,
        //高亮  被点击高亮
        currentIndex: _currentIndex,
        //修改 页面
        onTap: _ItemTapped,
        //shifting :按钮点击移动效果
        //fixed：固定
        type: BottomNavigationBarType.fixed,

        fixedColor: Colors.blue,
      ),
    );
  }

  void _ItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class _MyAppState1 extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController control;
  HomeModel homeModel = HomeModel();

  @override
  void initState() {
    super.initState();
    control = TabController(length: 4, vsync: this);
//    homeModel.getHomeInfo((img) {});
  }

  List tabData = [
    {
      'text': '业界动态',
      'icon': Icon(Icons.language),
      'page': FirstPage(title: "首页")
    },
    {'text': 'WIDGET', 'icon': Icon(Icons.extension), 'page': SecondPage()},
    {'text': '组件收藏', 'icon': Icon(Icons.favorite), 'page': ThirdPage()},
    {'text': '关于手册', 'icon': Icon(Icons.import_contacts), 'page': FourthPage()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: control, children: [
        tabData[0]["page"],
        tabData[1]["page"],
        tabData[2]["page"],
        tabData[3]["page"]
      ]),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            tabs: [
              Tab(text: tabData[0]["text"], icon: tabData[0]["icon"]),
              Tab(text: tabData[1]["text"], icon: tabData[1]["icon"]),
              Tab(text: tabData[2]["text"], icon: tabData[2]["icon"]),
              Tab(text: tabData[3]["text"], icon: tabData[3]["icon"])
            ],
            controller: control,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicator: const BoxDecoration()),
      ),
    );
  }
}
