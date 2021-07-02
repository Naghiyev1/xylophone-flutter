import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buidKey({Color color, soundNumber}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buidKey(color: Colors.red, soundNumber: 1),
              buidKey(color: Colors.orange, soundNumber: 2),
              buidKey(color: Colors.yellow, soundNumber: 3),
              buidKey(color: Colors.green, soundNumber: 4),
              buidKey(color: Colors.teal, soundNumber: 5),
              buidKey(color: Colors.blue, soundNumber: 6),
              buidKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
