import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///ListView内置三种构建方式 builder，默认构建函数和custom

///第一种builder  使用回调函数itemBuilder动态的构建每一个cell
class ListViewDemo extends StatelessWidget {
  final dataList = NetDataItem.demoBluilder();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(
        color: Color(0xFFF5F5F5),
        child: ListView.builder(
          ///设置item的个数
          itemCount: this.dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: ListViewCell(item: this.dataList[index]),
              onTap: () {
                print("我点击了第" + index.toString() + "个");
              },
            );
          },
        ),
      ),
    );
  }
}

class ListViewDemo1 extends StatefulWidget implements SliverChildDelegate {
  var dataList = NetDataItem.demoBluilder();
  @override
  _ListViewDemo1State createState() => _ListViewDemo1State();

  @override
  void debugFillDescription(List<String> description) {}

  @override
  void didFinishLayout(int firstIndex, int lastIndex) {}

  @override
  double estimateMaxScrollOffset(int firstIndex, int lastIndex,
      double leadingScrollOffset, double trailingScrollOffset) {
    return null;
  }

  @override
  // TODO: implement estimatedChildCount
  int get estimatedChildCount => 100;

  @override
  int findIndexByKey(Key key) {
    // TODO: implement findIndexByKey
    return 1;
  }

  @override
  bool shouldRebuild(SliverChildDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }

  @override
  Widget build(BuildContext context, int index) {
    // TODO: implement build
    return null;
  }
}

class _ListViewDemo1State extends State<ListViewDemo1> {
  void _aActiveChanged() {
    setState(() {
      widget.dataList = NetDataItem.demoBluilder();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text'),
        backgroundColor: Color(0xffffffff),
      ),
      child: GestureDetector(
        onTap: _aActiveChanged,
        child: Container(
          color: Color(0xFFF5F5F5),
          child: ListView.custom(childrenDelegate: widget),
        ),
      ),
    );
  }
}

///第二种custom  使用类似于ios的UITableViewDelegate方式 由父组件 代理生成cell

class ListViewCell extends StatelessWidget {
  final NetDataItem item;
  const ListViewCell({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              item.titile,
              maxLines: 100,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              item.content,
              maxLines: 100,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
                height: 1.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black87),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    item.author,
                  ),
                  Text(item.dateStr),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NetDataItem {
  String titile;
  String content;
  String author;
  String dateStr;
  NetDataItem(this.titile, this.content, this.author, this.dateStr);
  static List<NetDataItem> demoBluilder() {
    var list = List<NetDataItem>();
    for (var i = 0; i < 1000; i++) {
      var title = "$i .原油宝穿仓：投资者维权、监管发声 中行发布业务说明";
      var content =
          "$i Content Test ✺◟(∗❛ัᴗ❛ั∗)◞✺ ✺◟(∗❛ัᴗ❛ั∗)◞✺ 😀😖😐😣😡🚖🚌🚋🎊💖💗💛💙🏨🏦🏫 Async Display Test ✺◟(∗❛ัᴗ❛ั∗)◞✺ ✺◟(∗❛ัᴗ❛ั∗)◞✺ 😀😖😐😣😡🚖🚌🚋🎊💖💗💛💙🏨🏦🏫";
      var author = "$i 吉姆*雷诺";
      var date = DateTime.now();
      var dateStr = "$i : " +
          date.year.toString() +
          '-' +
          date.month.toString() +
          '-' +
          date.day.toString();
      var item = NetDataItem(title, content, author, dateStr);
      list.add(item);
    }
    return list;
  }
}
