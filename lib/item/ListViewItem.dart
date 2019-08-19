import 'package:flutter/material.dart';
import '../router/Routes.dart';
import 'package:fluro/fluro.dart';

class ListViewItem extends StatelessWidget {
  final String itemUrl;
  final String itemTitle;
  final String data;

  const ListViewItem({Key key, this.itemUrl, this.itemTitle, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(itemTitle),
        ),
        onTap: () {
//          Routes.router.navigateTo(context, "${Routes.webviewPage}/$itemTitle/$itemUrl",
//              transition: TransitionType.fadeIn);
          Routes.router.navigateTo(context, '${Routes.webviewPage}/$itemTitle/${Uri.encodeComponent(itemUrl)}', transition: TransitionType.fadeIn);
        },
        subtitle: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(data,
                  style: TextStyle(color: Colors.black54, fontSize: 10.0)),
            )
          ],
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30.0),
      ),
    );
  }
}
