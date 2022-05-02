import 'package:flutter/material.dart';
import 'answers.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) => runApp(const MyQuizzer());

class MyQuizzer extends StatelessWidget {
  const MyQuizzer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: quizzerPage(),
    );
  }
}

class quizzerPage extends StatefulWidget {
  quizzerPage({Key? key}) : super(key: key);

  @override
  State<quizzerPage> createState() => _quizzerPageState();
}

class _quizzerPageState extends State<quizzerPage> {
  String question1 = 'Question: 1+1';
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            question(),
            answers(_updateScore),
            getScore(),
          ],
        ),
      ),
    );
  }

  Text question() {
    return Text(
      question1,
      style: GoogleFonts.firaCode(
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Text getScore() {
    return Text(
      'Your Goal: $score',
      style: GoogleFonts.firaCode(
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  void _updateScore(int plusNumber) {
    setState(() {
      score += plusNumber;
    });
  }
}
