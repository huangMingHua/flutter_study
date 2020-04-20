

void testCode(){
  //变量
  ///var编译器会进行类型推断
  var str='this is var';
  //类型校验  下面会报错  无法给string变量赋值int类型的
  //str = 99;//A value of type 'int' can't be assigned to a variable of type 'String'.
  //直接指明变量类型
  String str1 ='this is var';
  print(str == str1);

  //常量final和const
  const name = 'Bob';
  //const是编译时常量,以下会报错  
  //const date = new Object();
  final String nickname = "nickname";
  ///final属于运行时常量 final是惰性初始化，即在运行时第一次使用前才初始化 
  final date = new Object();
  ///类似于swift 忽略返回值警告
  var _ = date;

  //nickname = 'otherName';//编译报错:a final variable, can only be set once.
  //name = 'otherName';//编译报错:Constant variables can't be assigned a value.
  print("const value->" + name);
  print("final value->" + nickname);
  /*
  Dart的命名规则：

          1、变量名称必须由数字、字母、下划线和美元符($)组成。

          2.注意：标识符开头不能是数字

          3.标识符不能是保留字和关键字。   

          4.变量的名字是区分大小写的如: age和Age是不同的变量。在实际的运用中,也建议,不要用一个单词大小写区分两个变量。
        
          5、标识符(变量名称)一定要见名思意 ：变量名称建议用名词，方法名称建议用动词  
  */
}