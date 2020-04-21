/*
Dart和其他面向对象语言不一样，Data中没有 public  private protected这些访问修饰符合

但是我们可以使用_把一个属性或者方法定义成私有。

*/

class Person extends Object{
  String name;
  int age;
  ///构造函数不被继承  
  ///默认构造函数与Person(this.name,this.address);相同
  Person(String name,int age){
    this.name = name;
    this.age = age;
  }
  ///命名构造函数
  Person.constructor(){
    this.name = "";
    this.age = 0;
  }
  // 指向主构造函数
  Person.constructor2():this('',10);
  ///类方法 类方法无法被继承  也无法被子类使用
  static staticFunc(){
    print("staticFunc");
  }
  void printName(){
    print("Person->" + this.name);
  }
}

class Student extends Person{

  ///只读属性
  String get readonlyProperty{
    return "readonlyProperty";
  }

  int score;
  ///getter方法 
  int get scoreVal{
    return score * 3;
  }
  //setter方法
  set scoreVal(int value){
      this.score = value ~/ 3;
  }

  //定义私有属性  在当前模块中仍然是可以访问的  外部模块无法访问到
  String _privateVar = "_privateVar";
  ///定义私有方法   在当前模块中仍然是可以访问的  外部模块无法访问到
  void _privateFunc(){
    print(_privateVar);
  }
  School school;
  //构造函数需要先调用父类的构造函数  然后再进行自己的构造方法
  ///构造函数不被继承  但是需要调用父类定义的构造函数 
  Student(String name,School school,int age) : super(name, age){
    this.school = school;
    ///默认构造函数
  }
  ///和上面的是等效的  
  // Student(String name,School school,int age) : super.constructor(){
  //   this.school = school;
  //   this.name = name;
  //   this.age = age;
  // }

  @override
  void printName() {
    //super.printName();
    
    //重写了父类的方法
    print("Student->" + this.name);
  } 
  
}

class School extends Object{
  ///final修饰的属性只能赋值一次  之后无法更改
  final String name;
  // 静态成员变量。
  static final Map<String, School> _cache =
      <String, School>{};

  //工厂构造函数
  factory School(String name){
    ///工厂函数内部不能使用this
    if(_cache.containsKey(name)){
      return _cache[name];
    }else{
      final obj = School._internal(name);
      _cache[name] = obj;
      return obj;
    }
  }
  School._internal(this.name);
  ///自定义运算符
  bool operator +(School other){
    return this.name == other.name;
  } 
}
void testCode(){
  final scool1 = School("外国语学院");
  var jay = Student("jay", scool1, 12);
  ///当前模块可以访问私有方法和私有属性  
  jay._privateFunc();
  jay.scoreVal = 90;
  print(jay.scoreVal);
  //jay.readonlyProperty = 60;//报错  因为是只读属性

  /*
Dart中的对象操作符:

    ?     条件运算符 
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/
  ///?.  跟swift可选链相似  防止为null使用出现异常
  var name2 = jay?.school?.name;//即使是jay、school为null都不会出现异常
  Object obj = jay;
  ///类型转换  类型转换为强制性 失败会抛出异常  
  try {
    var app = obj as Person;
    //is判断是否是这个类 下面返回true
    print('app is Student class ' + (app is Student).toString());
  } catch (e) {
    print(e);
  }
  //级联操作
  Student p1 = Student("lusi", scool1, 11);
  ///第一行先..声明后续可以级联  后续的行数不用;结尾  换行..就可以便利使用到上一级的对象
  ///(用处不大)
  p1..name=name2
     ..age=30
     ..scoreVal = 98
     .._privateFunc();

}

