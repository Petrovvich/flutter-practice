import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void _playSound(int sound) {
    player.play('sounds/note$sound.wav');
  }

  Widget _buildRow(int sound, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(sound);
        },
        child: Text(''),
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
              _buildRow(1, Colors.red),
              _buildRow(2, Colors.orange),
              _buildRow(3, Colors.yellow),
              _buildRow(4, Colors.green),
              _buildRow(5, Colors.teal),
              _buildRow(6, Colors.blue),
              _buildRow(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
