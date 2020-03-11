import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _playNote(int noteNumber) {
      final AudioCache player = AudioCache();
      player.play('note$noteNumber.wav');
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          elevation: 5.0,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                color: Colors.indigoAccent,
                onPressed: () {
                  _playNote(1);
                },
              ),
              FlatButton(
                color: Colors.blueGrey,
                onPressed: () {
                  _playNote(2);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  _playNote(3);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  _playNote(4);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  _playNote(5);
                },
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  _playNote(6);
                },
              ),
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  _playNote(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
