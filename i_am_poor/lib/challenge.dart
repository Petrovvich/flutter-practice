import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Challenge extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: double.infinity,
              width: 100,
              color: Colors.red,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            Container(
              height: double.infinity,
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
