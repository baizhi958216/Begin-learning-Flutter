import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Mydice());
}

class Mydice extends StatelessWidget {
  const Mydice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 56, 56),
        appBar: AppBar(
          title: const Text('Dice'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 44, 44, 44),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1, rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
              },
              // 这不是作弊，这是功能
              onLongPress: () {
                setState(() {
                  leftDice = 6;
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                });
              },
              // 这不是作弊，这是功能
              onLongPress: () {
                setState(() {
                  rightDice = 6;
                });
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          )
        ],
      ),
    );
  }
}

/* class DicePage extends StatelessWidget {
  int leftDice = 1, rightDice = 2;
  @override
  Widget build(BuildContext context) {
    
    //动态类型 dynamic dontknowDice;

    return Center(
      child: Row(
        children: <Widget>[
          // Expanded(child: Image.asset('images/dice1.png')),
          Expanded(
            // flex: 2,
            child: TextButton(
              onPressed: () {
                leftDice = 3;
              },
              child: Image(
                // 插值语法
                image: AssetImage('images/dice${leftDice}.png'),
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            // FlatButton, RaisedButton, and OutlineButton have been
            // replaced by TextButton, ElevatedButton, and OutlinedButton respectively.
            child: TextButton(
              onPressed: () {
                log('你按下了2');
              },
              child: Image(
                image: AssetImage('images/dice${rightDice}.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 */