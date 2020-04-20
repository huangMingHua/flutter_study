

void testCode(){
  ///字典set的几种定义方式
  var aMap = {'name':'Luxi','age':'10'};
  var names = <String,String>{};
  var aMa2 = Map<String,int>();
  //int _ = aSet.length; ///获取到集合的元素个数

  //增
  aMap['key1'] = 'value1'; 
  names.addAll({'key2':'value2'});
  
  //删除
  aMa2['name'] = null;
  aMa2.remove('key3');

  //查 返回bool
  aMa2.containsKey('key');
  aMa2.containsValue('value');
  aMa2.isEmpty;///是否是空的
  aMa2.isNotEmpty;///是否非空

  ///遍历
  ///还有其他和swift，es6基本一致的forEach,map  
  aMap.forEach((key,value)=>{
    ///
  });


}