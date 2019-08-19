import 'package:fluro/fluro.dart';
import 'package:flutterlib_app/home/FirstPage.dart';
import 'package:flutterlib_app/home/SecondPage.dart';
import 'package:flutterlib_app/web/WebviewPage.dart';

class Routes {
  static Router router;
  static String firstPage = '/firstPage';
  static String secondPage = '/secondPage';
  static String webviewPage = '/webviewPage';

  static void configureRoutes(Router router) {
    router.define("$firstPage/:title/:content",
        handler: Handler(handlerFunc: (context, params) {
      var title = params['title'][0]; //取出传参
      var content = params['content'][0]; //取出传参
      return FirstPage(title: title,content: content);
    }));

    router.define(secondPage,handler: Handler(handlerFunc: (context, params) => SecondPage()));

    router.define("$webviewPage/:title/:url",
        handler: Handler(handlerFunc: (context, params) {
          var title = params['title'][0]; //取出传参
          var url = params['url'][0]; //取出传参
          return WebviewPage(title: title,url: url);
        }));
    Routes.router = router;
  }
}
