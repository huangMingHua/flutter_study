import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'flutterDemo/flutterList.dart';
import 'uiDemo/UIDemoList.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text('flutter_study'),
          ///CupertinoPageScaffold需要设置透明度  如果透明度不等于1的话  页面起始位置在屏幕上方
          backgroundColor: Color(0xffffffff)),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                ///使用Container才能设置margin
                margin: EdgeInsets.only(top: 10),
                child: GestureDetector(
                    ///点击事件添加方式
                    onTap: ()=>{
                      Navigator.of(context).push(CupertinoPageRoute<bool>(
                        builder: (BuildContext context)=> UIDemoList()
                      ))
                    },
                    child: ClipRRect(
                      ///圆角切割方式
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      child: Container(
                        color: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                        child: Text(
                          "UIDemo",
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                    )
                    ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: CupertinoButton(
                  child: Text("flutter"),
                  color: Colors.blue,
                  pressedOpacity: 0.5,
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  onPressed: () => {
                    Navigator.of(context).push(CupertinoPageRoute<bool>(
                        builder: (BuildContext context)=> FlutterList()
                      ))
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
