import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;

  void _updateState() {
    setState(() {
      var random = Random().nextInt(5) + 1;
      ballNumber == random ? _updateState() : ballNumber = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () => {_updateState()},
        child: Image.asset('assets/images/ball$ballNumber.png'),
      ),
    );
  }
}
