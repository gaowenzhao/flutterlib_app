import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget{
  @override
  State<FirstPage> createState() {
    return _FirstPageState();
  }
}
class _FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("FirstPage"),
    );
  }
}