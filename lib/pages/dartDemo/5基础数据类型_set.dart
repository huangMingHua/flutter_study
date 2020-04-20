
void testCode(){
  ///集合set的几种定义方式
  var aSet = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  var aSet2 = Set<int>();
  //int _ = aSet.length; ///获取到集合的元素个数

  //增
  aSet.add('value');
  aSet.addAll(['添加','多个']);
  aSet2.add(10);
  
  //删除
  aSet.remove('chlorine');
  names.removeAll(['删除','多个对象']);

  //查
  aSet.contains("value");
  aSet.containsAll(['是否','都包含']);
  aSet.isEmpty;///是否是空的
  aSet.isNotEmpty;///是否非空

  ///并集
  var unionSet = aSet.union(names);
  //差集  
  var difference2 = aSet.difference(names);
  ///交集
  var intersection2 = aSet.intersection(names);

  ///遍历
  

  ///和数组一样尊从Iterable协议/接口
  ///还有其他和swift，es6基本一致的forEach,map,reduce  
  unionSet.forEach((item)=>{
    ///
  });
  difference2.map((item)=>item);
  intersection2.map((item)=>item);
}
