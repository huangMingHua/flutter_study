
//abstract定义抽象类似于swift的协议protocol
abstract class Db{   //当做接口   接口：就是约定 、规范
    String uri;      
    add(String data);
    save();
    void delete();
}
///抽象类无法示例化  只能子类或者implements的类来实例化出对象
abstract class Db2{   
    doSomething(){

    }
}
class DB3 extends Db2{

}
//使用extends来继承一个类  使用implements来遵从多个接口(协议)
///遵从了某个接口(协议)就必须实现该接口(协议)定义的属性和函数
class Mysql extends Object implements Db,Db2{
  @override
  String uri;
  Mysql(this.uri);
  @override
  add(data) {   
    print('这是mysql的add方法'+data);
  }
  
  @override
  save() {   
    return null;
  }

  @override
  doSomething() {
    return null;
  }

  @override
  delete() {
    ///可以实例化
      var _ = DB3();
      //var _ = Db2();//报错  抽象类无法示例化  只能子类或者implements的类来实例化出对象
  }
}


//*******************mixins********************* */

class A {
  String info="this is A";
  void printA(){
    print("A");
  }
}

class B {
  void printB(){
    print("B");
  }
}
///使用mixins实现类似多继承的功能  
class C with A,B{
  @override
  void printB() {
    print("重写了printB");
  }
}
///父类和混入都存在同一个函数的时候  会执行混入的函数，父类的会被覆盖掉
class D extends C with A,B{

}
void testfonc1(){
  var c=new C();  
  c.printA();
  c.printB();
  print(c.info);

  //混入 类型判断中 因为c混入了A、B相当于继承自他们  所有是他们的子类
  print(c is C);    //true
  print(c is A);    //true
  print(c is B);   //true
}