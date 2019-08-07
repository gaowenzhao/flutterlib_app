import 'package:flutterlib/HttpApi.dart';
import 'package:flutterlib_app/bean/HomeBean.dart';
class HomeModel {
  static const HOMEINFO = "/refactoring/investment/common/homeInfo?platform=3";
  static const SYSTEMMSG = "/hzed-finance-api/message/system";

  getHomeInfo(success) {
    HttpApi.get(HOMEINFO, (data) {
      HomeBean entity = HomeBean.fromJson(data);
      success(entity?.banners[0].image);
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
}
