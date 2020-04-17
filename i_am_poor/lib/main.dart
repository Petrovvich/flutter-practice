import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: IAmPoorApp(),
    ));

class IAmPoorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IAmPoorAppState();
}

class _IAmPoorAppState extends State<IAmPoorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[600],
          title: Text('I am poor')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Image(
            image: AssetImage('assets/images/main_img.jpg'),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
