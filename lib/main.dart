import 'dart:developer';

import 'package:exploration_planner/quiz.dart';
import 'package:exploration_planner/result.dart';
import 'package:flutter/material.dart';

/* void main() {
  runApp(MyApp());
} */

main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
// refactor重构StatelessWidget->StatefulWidget Ctrl+Shift+r
class MyApp extends StatefulWidget {
  // 为公开类提供Key
  const MyApp({Key? key}) : super(key: key);

  /* 
  // VSCode自动重构生成
  @override
  State<MyApp> createState() => _MyAppState(); 
  */

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // const: 编译时常量
  // final: 运行时常量
  final _questions = const [
    {
      'QuestionText': 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'QuestionText': 'What\'s your favorite animal?',
      'answer': ['Rabbits', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'QuestionText': '挑选你的老婆?',
      'answer': ['莹', '神里凌华', '霄宫', '刻晴'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
        /* 
        https://dart-lang.github.io/linter/lints/avoid_print.html
        BAD: print('$_questionIndex');
        GOOD: log('$_questionIndex'); 
        */
        log('$_questionIndex');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Flutter")),
          body: _questionIndex < _questions.length
              /*
        小于questions.length展示列表
        否则中间展示'There is nothing here!!'
         */
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : const Result('There is nothing here')),
    );
  }

  /* 
  //高度耦合
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      // home: Text("Hello!"),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter")),
        // body: Text('Flutter'),
        body: Column(children: <Widget>[
          Text(questions[questionIndex]),
          // answerQuestion()会返回结果给编译器，但是此处answerQuestion是void
          // answerQuestion则将指针传给编译器
          ElevatedButton(
              onPressed: answerQuestion, child: const Text("Answer 1")),
          // 可以使用箭头函数，匿名函数
          ElevatedButton(
              onPressed: () => print("Answer 2!"),
              child: const Text("Answer 2")),
          ElevatedButton(
              onPressed: () {
                print("Answer 3!");
              },
              child: const Text('Answer 3')),
        ]),
      ),
    );
  } */
}





































/* // 打log用的
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
 */