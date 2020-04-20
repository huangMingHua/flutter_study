

void testCode(){
  ///字符串的定义  一组 UTF-16 单元序列字符串通过单引号或者双引号创建。
  var str1 = 'this is str1';
  String str2 = 'this is str1';
  var str3 = '''
  这里是多行
  字符串
  的定义
  ''';
  //使用 r 前缀，可以创建 “原始 raw” 字符串 无需添加转义字符，认为是不含有换行 \t这种的
  var ars = r"In a raw string, even \n isn't special.";
  var ars2 = "In a raw string, even \n isn't special.";
  var ars3 = r'this is str1';
  //因此 ars2 != ars2;
  print("ars2 == ars2" + (ars == ars2).toString());
  //不含\字符的是相等的
  print("ars3 == str1" + (ars3 == str1).toString());

  //字符串的拼接 下面两种方式拼出来的结果是相等的
  var joinStr1 = str1 + str2;
  var joinStr2 = "$str1$str2";
  print("joinStr1 == joinStr2");
  print(joinStr1 == joinStr2);
  print('字符串长度->' + joinStr2.length.toString());
  //判断是否已什么开头
  print(str1.startsWith('pattern'));
  ///是否已什么结尾
  print(str1.endsWith('pattern'));
  //去两头空格和换行符
  str1.trim();
  ///转小写
  str1.toLowerCase();
  //转大写
  str1.toUpperCase();
  //字符串截取   下标1-下标10
  str3.substring(1,10);
  //字符串查找子字符串开始的下标
  str3.indexOf('pattern');
  //字符串查找使用正则  正则表达式应该使用原始字符串 就不用添加转义字符了
  str3.indexOf(new RegExp(r'\d+'));
}
