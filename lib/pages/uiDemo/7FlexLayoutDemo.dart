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
      child: Column(
        children: <Widget>[
          Container(
              child: Text(
            'Expanded、Column、Row的使用',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 5),
                  child: Container(
                    color: Colors.black12,
                    height: 20,
                  ),
                ),
                flex: 2,

                ///比重  分配父类的是占比
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    color: Colors.red,
                    height: 40,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 10),
                  child: Container(
                    color: Colors.blue,
                    height: 40,
                  ),
                ),
                flex: 2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
