// 打log用的
import 'dart:developer';
// 引入flutter自带material包，提供丰富的material Widgets
import 'package:flutter/material.dart';

// Dart 主方法
void main(List<String> args) {
  // runApp: Flutter框架入口
  return runApp(const MyApp());
}

/* 
Dart单行 函数/方法 简写
void main(List<String> args) => runApp(const MyApp());
 */

/*
Flutter 中 一切皆 Widget
Widget: StatefulWidget, StatelessWidget
此MyApp类 继承 无状态Widget
*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // Widget build: 描述由该无状态Widget展示的用户界面部分
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      title: 
      在高级版本的安卓里使用的是包名
      所以title在这里是定义Web端的标题
      */
      title: 'Flutter',
      /* 
      home:
      应用程序正常启动时首先显示的路由页
      定义 home 将会取代路由页的根路径
       */
      /*
      Scaffold: 页面基本骨架
       */
      home: Scaffold(
        // 顶栏
        appBar: AppBar(
          title: const Text("Flutter"),
          // actions: title Widget 后面显示的 Widget 列表
          actions: <Widget>[
            // 5个Icon按钮
            IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  log("点击了分享");
                }),
            IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  log("点击了分享");
                }),
            IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  log("点击了分享");
                }),
            IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  log("点击了分享");
                }),
            IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  log("点击了分享");
                }),
          ],
        ),
        // drawer: 抽屉 该按钮会显示在appBar title之前
        drawer: const Drawer(),
        // body: 顶栏下面的主体部分 Scaffold的主要内容
        // Center: Center Widget 会将内容显示在中心
        body: const Center(
          child: Text("Flutter"),
        ),
      ),
    );
  }
}
