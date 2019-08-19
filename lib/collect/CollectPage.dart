import 'package:flutter/material.dart';
class CollectPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CollectPageState();
  }
}
class _CollectPageState extends State<CollectPage>{
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("收藏"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      );
  }

}