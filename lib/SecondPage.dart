import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget{
  @override
  State<SecondPage> createState() {
    return _SecondPageState();
  }
}
class _SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("SecondPage"),
    );
  }
}