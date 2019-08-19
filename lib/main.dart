import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlib/StatusBarUtils.dart';
import 'package:flutterlib/widget/bottomtab/TabBarViewPage.dart';
import 'package:flutterlib/widget/bottomtab/TabRefreshPage.dart';
import 'package:flutterlib_app/router/Routes.dart';
import 'package:flutterlib_app/widget/WidgetPage.dart';
import 'about/AboutUsPage.dart';
import 'collect/CollectPage.dart';
import 'home/HomePage.dart';

void main() {
  List tabList = [
    {
      'text': '业界动态',
      'icon': ImageIcon(AssetImage("assets/images/house.png")),
      'page': HomePage(),
      'color':Colors.white,
    },
    {'text': 'WIDGET', 'icon': Icon(Icons.extension), 'page': WidgetPage(),'color':Colors.redAccent},
    {'text': '组件收藏', 'icon': Icon(Icons.favorite), 'page': CollectPage(),'color':Colors.blue,},
    {'text': '关于手册', 'icon': Icon(Icons.import_contacts), 'page': AboutUsPage(),'color':Colors.white}
  ];
  final router = Router();
  Routes.configureRoutes(router);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabBarViewPage(
      tabList: tabList,
      onTap: (int index) {
          StatusBarUtils.setStatus(tabList[index]["color"]);
      },
    ),
    title: "超神",
    color: Colors.amber,
  ));
}
