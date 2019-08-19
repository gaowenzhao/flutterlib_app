import 'package:flutterlib/net/HttpApi.dart';
import 'package:flutterlib/net/HttpRequest.dart';
import 'package:flutterlib/net/HttpResult.dart';
import 'package:flutterlib_app/bean/HomeBean.dart';
import 'package:flutterlib_app/bean/HomeData.dart';

class HomeModel {
  static const HOMEINFO = "/refactoring/investment/common/homeInfo?platform=3";
  static const SYSTEMMSG = "/hzed-finance-api/message/system";
  static const JUEJIN_FLUTTER =
      "/v1/get_tag_entry?src=web&tagId=5a96291f6fb9a0535b535438";

  getHomeInfoTest() {
    HttpApi.get(HOMEINFO, success: (data) {
      HomeBean entity = HomeBean.fromJson(data);
//      success(entity?.banners[0].image);
      print("HomeModel::getHomeInfo=${entity?.banners[0].image}");
    });
  }

  getPush(int pageNo) {
    HttpApi.post(SYSTEMMSG,
        param: {"pageNum": pageNo.toString(), "pageSize": "10"},
        success: (data) {
      print("HomeModel::getPush=$data");
    }, error: (code, msg) {
      print("HomeModel::getPush.error=$msg");
    });
  }

  getHomeInfo(int page, success) async {
    HttpResult data = await HttpRequest.get(JUEJIN_FLUTTER,
        param: {'page': page, 'pageSize': 20, 'sort': 'rankIndex'});
    if (data.success) {
      HomeData homeData = HomeData.fromJson(data.data["d"]);
      success(homeData);
      print("HomeModel::homeData=${homeData.total}");
    } else {
      print("HomeModel::getPush.error=${data.data}");
    }
  }
}
