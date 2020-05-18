import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text'),
        backgroundColor: Color(0xffffffff),
      ),
      child: GridView.builder(
          itemCount: 100,///个数
          scrollDirection: Axis.vertical,///滚动方向
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //交叉轴个数
            mainAxisSpacing: 20, //主轴间距
            crossAxisSpacing: 10, //交叉轴间距
            childAspectRatio: 1.0, //子组件cell的宽高比
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 12),
                  Text('第$index个',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                        ///文字装饰线(none 没有线，lineThrough 删 除线，overline 上划线，underline 下划线)
                        decoration: TextDecoration.none,
                      )),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(230, 230, 230, 0.9), width: 1.0)),
            );
          }),
    );
  }
}
