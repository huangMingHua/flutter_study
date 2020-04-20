import 'package:flutter/foundation.dart';

///Function也是个对象,他是一个抽象类  但是不是继承自Object
//定义一个带可选参数的函数,用[]将可选参数包起来
void optionalFunc(String username,[int age]){

}
///定义一个带默认值的函数,只能给可选参数定默认值 和swift es6有差别
void optionalFunc2(String username,[String sex='男',int age]){

}
///用大括号包起来定义外部参数名 username为内部参数名 {key,key1}定义外部参数和内部参数名
///指定命名参数{}内部的参数为默认可选  添加@required可将指定为必选参数
void optionalFunc3(String username,{String sex='男',@required int age}){
    // var aa = (int l000,int l2222)=> l000 + l2222;
    // closureFunc(aa);
}
///将函数作为参数进行转递
void closureFunc(int addFunc(int l1,int l2)){

  ///箭头函数
   var blockObj = (l000,l2222)=> 10;
   //dart箭头函数和es6的不一样  不能用 大括号包起来然后return返回值 只能有一行表达式
  ///报错  不能用return
  // var blockObj1 = (int l000,int l2222)=> {
  //     return l000 + l2222
  // };


  ///立即执行函数  和js基本一致
  ((int age){

  })(10);

}
