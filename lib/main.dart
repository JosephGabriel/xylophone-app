import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String sound) {
    final player = AudioCache();
    player.play(sound);
  }

  Widget createKey({Color color, String note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createKey(color: Colors.red, note: 'note1.wav'),
              createKey(color: Colors.orange, note: 'note2.wav'),
              createKey(color: Colors.yellow, note: 'note3.wav'),
              createKey(color: Colors.green, note: 'note4.wav'),
              createKey(color: Colors.teal, note: 'note5.wav'),
              createKey(color: Colors.blue, note: 'note6.wav'),
              createKey(color: Colors.purple, note: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
