import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(List<String> args) => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void playSound(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    Expanded buildKey(int number, Color color) {
      return Expanded(
        child: TextButton(
          onPressed: () => playSound(number),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Container(),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, const Color.fromARGB(255, 255, 0, 0)),
                buildKey(2, const Color.fromARGB(255, 255, 123, 0)),
                buildKey(3, const Color.fromARGB(255, 251, 255, 0)),
                buildKey(4, const Color.fromARGB(255, 0, 201, 7)),
                buildKey(5, const Color.fromARGB(255, 110, 187, 155)),
                buildKey(6, const Color.fromARGB(255, 0, 204, 255)),
                buildKey(7, const Color.fromARGB(255, 184, 74, 151)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
