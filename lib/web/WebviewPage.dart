import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutterlib/StatusBarUtils.dart';

class WebviewPage extends StatefulWidget{
  final String title;
  final String url;
  const WebviewPage({Key key, this.title, this.url}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _WebviewPageState();
  }
}
class _WebviewPageState extends State<WebviewPage>{
  @override
  void initState() {
    super.initState();
    StatusBarUtils.setStatus(Colors.blue);
  }
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
       appBar:
        AppBar(
         title: Text(widget.title,style: TextStyle(fontSize: 14,color: Colors.amberAccent)
         )),
       url: Uri.decodeComponent(widget.url),
       withZoom: true,
       withJavascript: true,
       withLocalStorage: true,
    );
  }

}
