import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  /* 
  由于_answerQuestion没有返回值,
  所以该回调函数应该是 VoidCallback
  设置为 Function 会收到 error 
  */

  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(left: 0, top: 15, right: 0, bottom: 15),
      // flutter 2.12开始不再使用RaisedButton
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
