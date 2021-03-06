import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light, //指定亮度主题，有白色/黑色两种可选。
        accentColor: Colors.lightBlue[100], //这里我们选浅蓝色为强调色值。
        backgroundColor:Colors.grey[100], ///默认背景色 f5f5f5
        primaryColor: Color(0xffE43441)
      ),
      home: HomePage()
    );
  }
}
