import 'package:flutter/material.dart';

@immutable
class Result extends StatelessWidget {
  final String textArea;

  const Result(this.textArea, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(textArea),
    );
  }
}
