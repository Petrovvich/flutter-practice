import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: App()));

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text('I am rich'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Image(
            image: AssetImage('assets/images/cat.jpg'),
          ),
        ),
      ),
    );
  }
}
