import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '4ListViewDemo.dart';

class ListViewCustomDemo extends StatefulWidget {
  @override
  _ListViewCustomDemoState createState() => _ListViewCustomDemoState();
}

///第二种custom  使用类似于ios的UITableViewDelegate方式  生成一个代理对象
///  由该对象决定渲染个数和渲染的cell
class _ListViewCustomDemoState extends State<ListViewCustomDemo> {
  var dataList = NetDataItem.demoBluilder(length: 2);
  void _aActiveChanged() {
    print('_aActiveChanged');
    setState(() {
      var arr = NetDataItem.demoBluilder(length: 2);
      for (var i = 0; i < arr.length; i++) {
        this.dataList.add(arr[i]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('ListViewCustom'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(
        color: Color(0xFFF5F5F5),
        child: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return GestureDetector(
            child: ListViewCell(item: this.dataList[index]),
            onTap: _aActiveChanged,
          );
        }, childCount: this.dataList.length)),
      ),
    );
  }
}


///第三组 separated创建类似于
class ListViewSeparatedDemo extends StatelessWidget {
  final dataList = NetDataItem.demoBluilder(length: 20);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('ListViewSeparatedDemo'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(
        color: Color(0xFFF5F5F5),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                child: ListViewCell(item: this.dataList[index]),
                onTap: () {
                  print("我点击了第" + index.toString() + "个");
                },
              );
            },
            separatorBuilder: (context, index) {
              if (index % 10 == 0) {
                return Text(
                '我是标题head' + index.toString(),
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none
                ),
              );
              }
              return Container();
            },
            itemCount: dataList.length),
      ),
    );
  }
}
