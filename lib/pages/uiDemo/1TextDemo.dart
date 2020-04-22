import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Text(
                '各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师大地',
                //文本对齐方式,center,left,right justfy(两端对齐)
                textAlign:TextAlign.left,
                //文字超出容器之后的处理方式(clip 裁剪，fade 渐隐，ellipsis 省略号)
                overflow:TextOverflow.fade ,
                //最大的行数 不能为null不能为0
                maxLines: 1e10.toInt(),
                ///基于fontSize的放大倍数  行间距也会跟随变动
                textScaleFactor: 1.5,
                ///样式
                style:TextStyle(
                  ///字体大小 类似于iOS的单位
                  fontSize: 16.0,
                  ///字体颜色
                  color:Colors.red,
                  //字体背景色
                  backgroundColor:Colors.white,
                  ///字体粗细(bold 粗体，normal 正常体) w100至w900
                  fontWeight: FontWeight.w800,
                  ///文字样式(italic 斜体，normal 正常体
                  fontStyle: FontStyle.italic,
                  ///文字装饰线(none 没有线，lineThrough 删 除线，overline 上划线，underline 下划线)
                  decoration:TextDecoration.none,
                  ///装饰线颜色
                  decorationColor:Colors.white,
                  ///装饰线样式([dashed,dotted]虚线， double 两根线，solid 一根实线，wavy 波浪 线)
                  decorationStyle: TextDecorationStyle.dashed,
                  ///字母间隙(如果是负值，会让字母变得更紧 凑)
                  letterSpacing: 5.0,
                  ///字体间距
                  wordSpacing: 1,
                  ///几倍行距
                  height: 1.5,
                  ///阴影  支持显示多个阴影 阴影color颜色 offset偏移量 blurRadius模糊半径
                  shadows:[
                    Shadow(color: Colors.blue[400],offset: Offset(5,5),blurRadius:2)]
                )
              
              ),
    );
  }
}