import 'package:fluro/fluro.dart';
import '../FirstPage.dart';
import '../SecondPage.dart';

class Routes {
  static Router router;
  static String firstPage = '/firstPage/';
  static String secondPage = '/secondPage';

  static void configureRoutes(Router router) {
    router.define("$firstPage:title/:content",
        handler: Handler(handlerFunc: (context, params) {
      var message = params['title'][0]; //取出传参
      var content = params['content'][0]; //取出传参
      return FirstPage(title: message,content: content);
    }));

    router.define(secondPage,
        handler: Handler(handlerFunc: (context, params) => SecondPage()));
    Routes.router = router;
  }
}
