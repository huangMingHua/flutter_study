
void testCode(){
  //算数运算符 +- * / %与 es6、swift基本一致 不
  //关系运算符 == <= >= != 和大多数语言一致
  //条件运算法if else  while和es6一致


  //类型转换
  ///类型判断
  var a = "字符串";
  ///这里是true
  print(a is String);
  try {
    var _ = int.parse('1000');
  } catch (e) {
    print(e.toString());
  }
}