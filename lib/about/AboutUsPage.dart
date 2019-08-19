import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class AboutUsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AboutUsPageState();
  }
}
class _AboutUsPageState extends State<AboutUsPage>{
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("关于手册",style: TextStyle(color: Colors.black,fontSize: 15),),
          centerTitle: true,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
      );
  }

}