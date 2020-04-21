/*
1、我们自定义的库     
      import 'lib/xxx.dart';
2、系统内置库       
      import 'dart:math';    
      import 'dart:io'; 
      import 'dart:convert';
3、Pub包管理系统中的库  
    https://pub.dev/packages
    https://pub.flutter-io.cn/packages
    https://pub.dartlang.org/flutter/

    1、需要在自己想项目根目录新建一个pubspec.yaml
    2、在pubspec.yaml文件 然后配置名称 、描述、依赖等信息
    3、然后运行 pub get 获取包下载到本地  
    4、项目中引入库 import 'package:http/http.dart' as http; 看文档使用
*/


/*
1、冲突解决

import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

Element element1 = new Element();           // Uses Element from lib1.
lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.

 */



/*

2部分导入
如果只需要导入库的一部分，有两种模式：

模式一：只导入需要的部分，使用show关键字，如下例子所示：

import 'package:flutter/material.dart' show Container,Center;

模式二：隐藏不需要的部分，使用hide关键字，如下例子所示：

import 'package:lib2/lib2.dart' hide foo;   
*/

/*
延迟加载
也称为懒加载，可以在需要的时候再进行加载。
懒加载的最大好处是可以减少APP的启动时间。

懒加载使用deferred as关键字来指定，如下例子所示：

import 'package:deferred/hello.dart' deferred as hello;
*/