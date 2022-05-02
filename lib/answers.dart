import 'package:flutter/material.dart';

Column answers(Function _updateScore) {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
              onPressed: () {
                _updateScore(1);
              },
              child: Text('+1')),
          TextButton(
              onPressed: () {
                _updateScore(2);
              },
              child: Text('+2')),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
              onPressed: () {
                _updateScore(3);
              },
              child: Text('+3')),
          TextButton(
              onPressed: () {
                _updateScore(4);
              },
              child: Text('+4')),
        ],
      ),
    ],
  );
}
