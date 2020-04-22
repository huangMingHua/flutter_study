import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class FlutterList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Flutter'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Text(
                '各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师大地',
                textAlign:TextAlign.left,
                overflow:TextOverflow.ellipsis ,
                // overflow:TextOverflow.fade ,
                maxLines: 100,
                textScaleFactor: 1,
                style:TextStyle(
                  fontSize: 16.0,
                  color:Colors.red,
                  backgroundColor:Colors.white,
                  // color:Color.fromARGB(a, r, g, b)
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  decoration:TextDecoration.none,
                  decorationColor:Colors.white,
                  decorationStyle: TextDecorationStyle.dashed,
                  letterSpacing: 1.0,
                  height:1.5,
                  shadows:[
                    Shadow(color: Colors.blue[400],offset: Offset(5,5),blurRadius:2),
                    Shadow(color: Colors.red[400],offset: Offset(5,5),blurRadius:2),
                    ]
                )
              
              ),
    );
  }
}