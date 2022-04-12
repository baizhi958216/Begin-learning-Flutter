import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Quiz(this.questions, this.answerQuestion, this.questionIndex,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[questionIndex]['QuestionText'] as String),
      ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
        return Answer(answerQuestion, answer);
      }).toList()
    ]);
  }
}
