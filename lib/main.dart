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

    Expanded _buildKeyAndNote({Color color, int noteNumber}) => Expanded(
          child: FlatButton(
            color: color,
            onPressed: () {
              _playNote(noteNumber);
            },
            child: Text(''),
          ),
        );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildKeyAndNote(color: Colors.redAccent, noteNumber: 1),
              _buildKeyAndNote(color: Colors.white12, noteNumber: 2),
              _buildKeyAndNote(color: Colors.green[800], noteNumber: 3),
              _buildKeyAndNote(color: Colors.purple, noteNumber: 4),
              _buildKeyAndNote(color: Colors.orange[900], noteNumber: 5),
              _buildKeyAndNote(color: Colors.yellow[900], noteNumber: 6),
              _buildKeyAndNote(color: Colors.blue[900], noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
