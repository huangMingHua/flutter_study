import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('flutter_study'),
      ),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              CupertinoButton(
                child: Text("Dart"),

                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                onPressed: ()=> {
                  print("点击了-Dart")
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  
}