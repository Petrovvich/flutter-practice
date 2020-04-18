import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceAppState();
}

class _DiceAppState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void _updateState() {
    setState(() {
      rightDiceNumber = Random().nextInt(5);
      leftDiceNumber = Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              onPressed: () => {_updateState()},
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              onPressed: () => {_updateState()},
            ),
          ),
        ],
      ),
    );
  }
}
