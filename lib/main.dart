import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main(List<String> args) {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void playSound(int number) {
      final player = AudioCache();
      player.play('note$number.wav');
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: (() {
                    playSound(1);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() {
                    playSound(2);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 255, 123, 0),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() {
                    playSound(3);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 251, 255, 0),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() {
                    playSound(4);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 0, 201, 7),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() {
                    playSound(5);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 110, 187, 155),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() {
                    playSound(6);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 0, 204, 255),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() {
                    playSound(7);
                  }),
                  child: Container(
                    width: 120,
                    height: 50,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 184, 74, 151),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
