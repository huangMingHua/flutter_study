import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContainerDemo extends StatelessWidget{
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
                ///容器背景色
                color:Colors.orange,
                ///指定宽高  不指定的话由子节点进行决定
                width: 100,
                height: 100,
                ////padding  内边距
                padding: EdgeInsets.all(10),
                ///外边距
                margin: EdgeInsets.all(10),
                ///定义约束  约束容器的最大宽高 和最小宽高
                constraints: BoxConstraints(
                  minHeight: 100,minWidth: 100,
                  maxHeight: 3000,maxWidth: 3000
                  ),
                ///形状变换 
                transform: Matrix4.rotationZ(0.2),
              ),
            ],
          ),
      ),
    );
  }
}