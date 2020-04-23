import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '1TextDemo.dart';
import '2ContainerDemo.dart';
import '3ImageDemo.dart';
import '4ListViewDemo.dart';
import '5ListViewCustomDemo.dart';

class CellItem{
  String name;
  WidgetBuilder builder;
  CellItem(this.name,this.builder);
}
final dataList  = [
  CellItem('TextDemo',(context)=>TextDemo()),
  CellItem('ContainerDemo',(context)=>ContainerDemo()),
  CellItem('ImageDemo',(context)=>ImageDemo()),
  CellItem('ListViewDemo',(context)=>ListViewDemo()),
  CellItem('ListViewCustomDemo',(context)=>ListViewSeparatedDemo()),
  
];

class UIDemoList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('UIDemo'),
        backgroundColor: Color(0xffffffff),
      ),
      child: Container(
          child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color:Colors.grey,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(CupertinoPageRoute<bool>(
                        builder: dataList[index].builder
                  ));
                },
                child: Text(
                  dataList[index].name,
                  style: Theme.of(context).textTheme.title,
                  ),
              ),
            ) ;
           },
          ),
      ),
    );
  }
  
}