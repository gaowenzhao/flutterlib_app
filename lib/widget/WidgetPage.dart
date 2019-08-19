import 'package:flutter/material.dart';
import 'package:flutterlib_app/bean/HomeData.dart';
import 'package:flutterlib_app/bean/first_page_item.dart';
import 'package:flutterlib_app/item/ListViewItem.dart';
import 'package:flutterlib_app/model/HomeModel.dart';
class WidgetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _WidgetPageState();
  }
}
class _WidgetPageState extends State<WidgetPage> with AutomaticKeepAliveClientMixin{
  List<FirstPageItem> entrylist;
  HomeModel homeModel = HomeModel();
  int pageNo = 0;
  @override
  void initState() {
    super.initState();
    getHomeInfo(pageNo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("钊神",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent,
        brightness: Brightness.dark,
      ),
      body: ListView.builder(itemBuilder: (context,index)=>buildItem(index),itemCount: entrylist!=null?entrylist.length:0),
    );
  }
  Widget buildItem(int index) {
    print("buildItem=$index");
     var item = entrylist[index];
      var myTitle = item.title;
      var myUsername = '${'👲'}: ${item.username} ';
      var codeUrl = item.detailUrl;
      return ListViewItem(
          itemUrl: codeUrl, itemTitle: myTitle, data: myUsername);
  }
  Future<void> getHomeInfo(int page) async {
    await homeModel.getHomeInfo(page, (HomeData data) {
      setState(() {
        if (page == 0) {
          entrylist = data.entrylist;
        } else {
          entrylist.addAll(data.entrylist);
        }
      });
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}