import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'router/Routes.dart';
class SecondPage extends StatefulWidget{
  final String title = "跳转到第一个界面";
  @override
  State<SecondPage> createState() {
    return _SecondPageState();
  }

}
class _SecondPageState extends State<SecondPage>{

  String _result = "测试";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二个界面")),
      body:  Center(child: FlatButton(onPressed: (){
        print("跳转到第一个界面");
      Routes.router.navigateTo(context, '${Routes.firstPage}${widget.title}/hahah', transition: TransitionType.fadeIn).then((result){
        setState(() {
          if(result!=null){
            _result = result;
            print("回跳返回值：$result");
          }
        });
      });
      }, child: Text(_result),color: Colors.blue,textColor: Colors.white,))
    );
  }

}

class FlatButtonCustom extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onPressed;

  const FlatButtonCustom([
    this.txt = '自定义按钮',
    this.color = Colors.blueAccent,
    this.shape,
    this.onPressed
  ]) :super();

  @override
  Widget build(BuildContext context) {
    final _onPressed = onPressed;
    return FlatButton(
      // 文本内容
        child: Text(txt, semanticsLabel: 'FLAT BUTTON 2'),
        // 按钮颜色
        color: color,
        // 按钮亮度
        colorBrightness: Brightness.dark,
        // 高亮时的背景色
        //highlightColor: Colors.yellow,
        // 失效时的背景色
        disabledColor: Colors.grey,
        // 该按钮上的文字颜色，但是前提是不设置字体自身的颜色时才会起作用
        textColor: Colors.white,
        // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会起作用
        disabledTextColor: Colors.grey,
        // 按钮主题,主要用于与ButtonTheme和ButtonThemeData一起使用来定义按钮的基色,RaisedButton，FlatButton，OutlineButton，它们是基于环境ButtonTheme配置的
        //ButtonTextTheme.accent，使用模版颜色的;ButtonTextTheme.normal，按钮文本是黑色或白色取决于。ThemeData.brightness;ButtonTextTheme.primary，按钮文本基于。ThemeData.primaryColor.
        textTheme: ButtonTextTheme.normal,
        // 按钮内部,墨汁飞溅的颜色,点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
        splashColor: Colors.deepPurple,
        // 抗锯齿能力,抗锯齿等级依次递增,none（默认),hardEdge,antiAliasWithSaveLayer,antiAlias
        clipBehavior: Clip.antiAlias,
        padding:  EdgeInsets.only(
            bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
        shape: (shape is ShapeBorder) ? shape :  Border.all(
          // 设置边框样式
          color: Colors.grey,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        // FlatButton 的点击事件
        onPressed: () {
          // Perform some action
          if (_onPressed is VoidCallback) {
            _onPressed();
          }
        },
        // 改变高亮颜色回掉函数，一个按钮会触发两次，按下后改变时触发一次，松手后恢复原始颜色触发一次
        // 参数 bool，按下后true，恢复false
        onHighlightChanged: (isClick) {
          print(isClick);
        }
    );
  }
}