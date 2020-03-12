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
    Column _portraitUI() => Column(
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
        );
    Row _landscapeUI() => Row(
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
        );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
            onPressed: () {
              print('see the list of my records');
            },
          ),
          backgroundColor: Colors.black54,
          titleSpacing: 20.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.fiber_manual_record,
                  color: Colors.red[900],
                ),
                onPressed: () {
                  print('start recording ...');
                }),
            IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.red[900],
                ),
                onPressed: () {
                  print('play recording ...');
                })
          ],
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? _portraitUI()
                    : _landscapeUI(),
          ),
        ),
      ),
    );
  }
}
/*
* * */
