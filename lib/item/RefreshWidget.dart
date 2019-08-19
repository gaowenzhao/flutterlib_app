import 'package:flutter/material.dart';
import 'package:flutterlib/widget/banner.dart';
import '../bean/BannerBean.dart';
import '../bean/first_page_item.dart';
import 'ListViewItem.dart';
import '../bean/HomeData.dart';
import '../model/HomeModel.dart';

class RefreshWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RefreshWidgetState();
  }
}

class _RefreshWidgetState extends State<RefreshWidget> {
  ScrollController scrollController = ScrollController();
  HomeModel homeModel = HomeModel();
  List<BannerBean> bannerBeans = [];
  int bannerSelectIndex=0;
  List<FirstPageItem> entrylist;
  int pageNo = 0;
  final List<dynamic> bannerStr = [
    {
      'image':
          'https://img.alicdn.com/tfs/TB1W4hMAwHqK1RjSZJnXXbNLpXa-519-260.jpg',
      'type': 0,
      'id': 9695909,
      'url': 'https://www.zhihu.com/question/294145797/answer/551162834',
      'title': '为什么阿里巴巴、腾讯和 Google 之类的企业都在使用 Flutter 开发 App？'
    },
    {
      'image':
          'https://img.alicdn.com/tfs/TB1XmFIApzqK1RjSZSgXXcpAVXa-720-338.jpg',
      'type': 0,
      'id': 9695859,
      'url': 'https://zhuanlan.zhihu.com/p/51696594',
      'title': 'Flutter 1.0 正式发布: Google 的便携 UI 工具包'
    },
    {
      'image':
          'https://img.alicdn.com/tfs/TB1mClCABLoK1RjSZFuXXXn0XXa-600-362.jpg',
      'type': 0,
      'id': 96956491409,
      'url': 'https://zhuanlan.zhihu.com/p/53497167',
      'title': 'Flutter 示范应用现已开源 — 万物起源(The History of Everything)'
    },
    {
      'image':
          'https://img.alicdn.com/tfs/TB1fXxIAAvoK1RjSZFNXXcxMVXa-600-362.jpg',
      'type': 0,
      'id': 9695816,
      'url':
          'https://mp.weixin.qq.com/s?__biz=MzAwODY4OTk2Mg==&mid=2652048101&idx=1&sn=20296088e4bd8ca33c5c9991167d9f7d&chksm=808caaa0b7fb23b65c0e5806209f8d86da6732f3a00a70353f3606018339518b0a8656f14dc5&mpsshare=1&scene=2&srcid=0106SZapVysZdIS6Oc5AhNH6&from=timeline&ascene=2&devicetype=android-27&version=27000038&nettype=WIFI&abtest_cookie=BQABAAgACgALABMAFAAFAJ2GHgAjlx4AV5keAJuZHgCcmR4AAAA%3D&lang=zh_CN&pass_ticket=4K1%2FUpsxP4suPj2iubR17wbAP7r9LW9iYrPAC2dppTqv7j7JO5FWMXtcKeBRxueV&wx_header=1',
      'title': 'Flutter 与 Material Design 双剑合璧，助您构建精美应用'
    }
  ];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        print('滑动到了最底部${scrollController.position.pixels}');
        getHomeInfo(++pageNo);
      }
    });
    bannerStr.forEach((item) {
      bannerBeans.add(BannerBean.fromJson(item));
    });
    getHomeInfo(pageNo);
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
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: ListView.builder(
          itemBuilder: (context, index) => buildItem(index),
          itemCount: entrylist != null ? entrylist.length + 1 : 0,
          controller: scrollController,
        ),
        onRefresh: () => getHomeInfo(pageNo = 0));
  }

  Widget buildItem(int index) {
    print("buildItem=$index");
    if (index == 0) {
      return Stack(children: <Widget>[
        BannerView(
          data: bannerBeans,
          buildShowView: (index, data) {
            var bannerBean = data as BannerBean;
            return Image.network(bannerBean.image, fit: BoxFit.cover);
          },
          delayTime: 5,
          onBannerClickListener: (index, data) {
            print(index);
          },
        ),

        Container(
          width: 90.0,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 1.0),
          margin: EdgeInsets.symmetric(vertical: 20),
          child:
              Text("免责声明", style: TextStyle(color: Colors.white, fontSize: 14)),
          decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(10))),
        ),
      ]);
    } else {
      var item = entrylist[index - 1];
      var myTitle = item.title;
      var myUsername = '${'👲'}: ${item.username} ';
      var codeUrl = item.detailUrl;
      return ListViewItem(
          itemUrl: codeUrl, itemTitle: myTitle, data: myUsername);
    }
  }
}
