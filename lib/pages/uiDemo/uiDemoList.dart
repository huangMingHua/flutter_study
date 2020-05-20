import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '1TextDemo.dart';
import '2ContainerDemo.dart';
import '3ImageDemo.dart';
import '4ListViewDemo.dart';
import '6GridViewDemo.dart';
import '7FlexLayoutDemo.dart';
import '8StackDemo.dart';
class CellItem{
  String name;
  WidgetBuilder builder;
  CellItem(this.name,this.builder);
}
final dataList  = [
  CellItem('Text',(context)=>TextDemo()),
  CellItem('Container',(context)=>ContainerDemo()),
  CellItem('ImageView',(context)=>ImageDemo()),
  CellItem('ListView',(context)=>ListViewDemo()),
  CellItem('GridView', (context)=>GridViewDemo()),
  CellItem('Padding Row Column Expanded', (context)=>FlexLayoutDemo()),
  CellItem('stack层叠 Align Stack Positioned', (context)=>StackDemo()),

  
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
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
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


class _MovieDetailState extends State<MovieDetail> {
  // build 函数是必须的，用来渲染当前有状态控件对应的 UI 结构
  @override
  Widget build(BuildContext context) {
    // 注意：在这个 _MovieDetailState 状态类中，可以使用 widget 对象访问到 StatefulWidget 控件中的数据并直接使用
    // 例如：widget.id
    return Text('MovieDetail --' + widget.id);
  }
}

class MovieDetail extends StatefulWidget {
  // 构造函数，初始化当前组件必须的 id 属性
  MovieDetail({Key key, @required this.id}) : super(key: key);
 
  // 电影的Id值
  final String id;
 
  // StatefulWidget 控件必须实现 createState 函数
  // 在 createState 函数中，必须返回一个继承自 State<T> 状态类的对象
  // 这里的 _MovieDetailState 就继承自 State<T>
  _MovieDetailState createState() => new _MovieDetailState();
}