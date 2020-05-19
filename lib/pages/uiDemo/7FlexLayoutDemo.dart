import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FlexLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(color: Colors.red,),
    );
  }
}
