import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DartList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Dart'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(
          ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
            return ;
           },
          ),
      ),
    );
  }
  
}