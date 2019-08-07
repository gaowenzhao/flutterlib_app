import 'package:flutter/material.dart';
import 'model/HomeModel.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';
void main() => runApp(new MaterialApp(
  home: new MyApp()
));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController control;

  @override
  void initState() {
    super.initState();
    control = TabController(length: 4, vsync: this);
  }
   List tabData = [
    {'text': '业界动态', 'icon': Icon(Icons.language),'page':FirstPage()},
    {'text': 'WIDGET', 'icon': Icon(Icons.extension),'page':SecondPage()},
    {'text': '组件收藏', 'icon': Icon(Icons.favorite),'page':ThirdPage()},
    {'text': '关于手册', 'icon': Icon(Icons.import_contacts),'page':FourthPage()}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body:TabBarView(
          controller:control,
          children: [tabData[0]["page"],tabData[1]["page"], tabData[2]["page"],tabData[3]["page"]]),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(tabs: [
          Tab(text:tabData[0]["text"],icon: tabData[0]["icon"]),
          Tab(text:tabData[1]["text"],icon: tabData[1]["icon"]),
          Tab(text:tabData[2]["text"],icon: tabData[2]["icon"]),
          Tab(text:tabData[3]["text"],icon: tabData[3]["icon"])
        ],controller: control,labelColor: Colors.red,unselectedLabelColor: Colors.white,indicator: const BoxDecoration()),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var homeModel = HomeModel();
  String _image;

  @override
  void initState() {
    super.initState();
    homeModel.getPush(0);
    homeModel.getHomeInfo((img) {
      setState(() {
        _image = img;
      });
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network("https://m.hzed.com$_image"),
            Image.network(
              "https://m.hzed.com$_image", width: 200, height: 100,),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
