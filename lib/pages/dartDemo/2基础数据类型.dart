
void testCode(){
  /*
  常用数据类型：
      Numbers（数值）:
          int
          double
      Strings（字符串）
          String
      Booleans(布尔)
          bool
      List（数组）
          在Dart中，数组是列表对象，所以大多数人只是称它们为列表
      Maps（字典）
          通常来说，Map 是一个键值对相关的对象。 
          键和值可以是任何类型的对象。每个 键 只出现一次， 而一个值则可以出现多次
  */
  /*
  项目中用不到的数据类型 （用不到）：
      Runes 
        Rune是UTF-32编码的字符串。它可以通过文字转换成符号表情或者代表特定的文字。

        main() {
          var clapping = '\u{1f44f}';
          print(clapping);
          print(clapping.codeUnits);
          print(clapping.runes.toList());
        
          Runes input = new Runes(
              '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
          print(new String.fromCharCodes(input));
        }

        
      Symbols
        Symbol对象表示在Dart程序中声明的运算符或标识符。
        您可能永远不需要使用符号，但它们对于按名称引用标识符的API非常有用，因为缩小会更改标识符名称而不会更改标识符符号。
        要获取标识符的符号，请使用符号文字，它只是＃后跟标识符：


        在 Dart 中符号用 # 开头来表示，入门阶段不需要了解这东西，可能永远也用不上。
        
        http://dart.goodev.org/guides/libraries/library-tour#dartmirrors---reflection
   */

  testNumbers();
  testBool();
}


///Numbers数据类型
void testNumbers(){
  //int必须是整型 整数值不大于64位
  int aInt1 = 123;
  aInt1 = 45;
  //直接赋浮点给int会报错
  //aInt1 = 4.05;//A value of type 'double' can't be assigned to a variable of type 'int'.
  aInt1 = 4.05.toInt();//转换类型
  print('aInt1->' + aInt1.toString());
  //2、double 浮点 64位
  double aDouble1 = 3.1415;
  //int需要转double才能给double变量赋值
  aDouble1 = aInt1.toDouble();
  aDouble1 = 1.42e5; //相当于1.42 * 10的五次方
  print('aDouble1->' + aDouble1.toString());
} 

//布尔类型
void testBool(){
  bool aBool = false;
  aBool = true;
  print('aBool->' + aBool.toString());
}
