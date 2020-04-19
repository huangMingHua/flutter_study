import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const dataList = [90];
class DartList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var list = [10,1,4,40,2];
    list.sort((l,r)=>l < r? -1 : 1);
    print(list);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Dart'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
            return new Text("text $index");
           },
          ),
      ),
    );
  }
  
}