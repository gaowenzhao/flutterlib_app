import 'package:flutter/material.dart';
import 'package:flutterlib_app/item/RefreshWidget.dart';

class FirstPage extends StatefulWidget {
  final String title;
  final String content;

  FirstPage({this.title, this.content = "FirstPage"});

  @override
  State<FirstPage> createState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage>with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshWidget());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
