import 'package:flutterlib_app/bean/BannerBean.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BannerBeanEntity") {
      return BannerBean.fromJson(json) as T;
    } else {
      return null;
    }
  }
}