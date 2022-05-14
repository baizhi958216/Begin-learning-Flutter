import 'dart:developer';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> questionList = [
    'You are 20s',
    'You are a boy',
    'Your wife is KeQing',
    'Your device is meizu',
    'Your device System UI is Flyme9',
    'Your device Android version is 12'
  ];

  int questionNumber = 0;

  List<Icon> scoreKeeper = [];

  Icon checkIcon = const Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon closeIcon = const Icon(
    Icons.close,
    color: Colors.red,
  );

  void updateScore(bool answer) {
    questionNumber >= questionList.length - 1
        ? {
            questionNumber == questionList.length - 1 &&
                    scoreKeeper.length <= questionList.length - 1
                ? {
                    answer
                        ? {
                            setState(() {
                              scoreKeeper.add(checkIcon);
                            }),
                          }
                        : {
                            setState(() {
                              scoreKeeper.add(closeIcon);
                            }),
                          }
                  }
                : {log('Out of questionList length')}
          }
        : {
            answer
                ? {
                    setState(() {
                      scoreKeeper.add(checkIcon);
                    }),
                  }
                : {
                    setState(() {
                      scoreKeeper.add(closeIcon);
                    }),
                  },
            questionNumber++,
          };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              //Questions
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        questionList[questionNumber],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              //Answers
              Column(
                children: [
                  // True
                  SizedBox(
                    width: 350,
                    height: 80,
                    child: TextButton(
                      onPressed: (() {
                        updateScore(true);
                      }),
                      child: Text(
                        'True',
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.green),
                        foregroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // False
                  SizedBox(
                    width: 350,
                    height: 80,
                    child: TextButton(
                      onPressed: (() {
                        updateScore(false);
                      }),
                      child: Text(
                        'False',
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.red),
                        foregroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              // Score
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: scoreKeeper,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
