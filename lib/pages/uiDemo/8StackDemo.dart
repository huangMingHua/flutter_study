import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Column(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
