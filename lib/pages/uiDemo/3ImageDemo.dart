import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class ImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('ContainerDemo'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Center(
        child: Column(
            ///主轴对齐方式 Column的主轴是垂直方向
            mainAxisAlignment:MainAxisAlignment.start,
            ///交叉抽对齐方式  Column的交叉是水平方向
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:20),
                ///加载本地图片  先要在pubspec.yaml中申明本地图片
                child: Image.asset(
                  'assets/images/a.jpeg',
                  ///填充方式
                  fit: null,
                  ///指定宽高
                  // width: 100,
                  // height: 100,
                  ///当宽高大于图片的像素的时候 进行的重复填充 repeat,repeatX,repeatY,noRepeat
                  repeat:ImageRepeat.noRepeat,
                  ///对齐方式 当图片像素大于或者小于容器宽高时  显示内容的对齐方式
                  alignment:Alignment.center,
                  ),
                ///约束最大宽高
                constraints: BoxConstraints(
                  maxHeight: 1000,maxWidth: 150
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top:20),
                ///加载网络图片
                child: Image.network(
                  'http://www.ionic.wang/statics/index/images/ionic4.png',
                  alignment: Alignment.topCenter,
                  repeat:ImageRepeat.repeatY,
                  //colorBlendMode:BlendMode.screen
                ),
                width: 100,
                height: 350,
                color: Colors.yellow,
              )
            ],
          ),
      ),
    );
  }
}