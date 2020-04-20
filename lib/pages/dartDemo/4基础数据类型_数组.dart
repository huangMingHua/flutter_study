
void testCode(){
  ///数组的几种定义方式
  var l1 = [9,1,3];
  ///定义一个长度为10的数组
  var l2 = List();
  ///定义指定类型的数组
  var l3 = List<String>();
  ///工厂模式  长度为20  fill填充的数组
  var l4 = List.filled(20, "fill");
  

  //增
  l2.add('value');
  l3.add('value');
  //删除
  l4.removeLast();
  l4.removeAt(0);
  l4.removeRange(0, 1);

  //插入-改
  l2.insert(0, "element");
  l1.sort((v1,v2)=>v1 < v2 ? -1 : 1);///升序排序
  //查  查找下标  找不到返回-1
  l2.indexOf('1');
  l2.isEmpty;///是否是空的
  l2.isNotEmpty;///是否非空

  ///遍历
  for(var i = 0 ; i < l4.length;i ++){
    var _ = l4[i]; ///_跟 swift的用法一致   忽略未使用变量警告
  }
  ///还有其他和swift，es6基本一致的forEach,map,reduce  
  l4.forEach((item)=>{
    ///
  });


}
