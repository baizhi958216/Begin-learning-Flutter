import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 150, left: 0, right: 0, bottom: 0),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
