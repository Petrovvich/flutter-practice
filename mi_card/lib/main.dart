import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MiCard(),
    ));

class MiCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _avatar(),
            _name(),
            _profession(),
            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            _phone(),
            _email(),
          ],
        ),
      ),
    );
  }
}

_avatar() {
  return CircleAvatar(
    radius: 50.0,
    backgroundImage: AssetImage('assets/images/cat_avatar.png'),
  );
}

_name() {
  return Text(
    'Petrovich',
    style: TextStyle(
        fontSize: 40.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontFamily: 'Pacifico'),
  );
}

_profession() {
  return Text(
    'FLUTTER DEVELOPER',
    style: TextStyle(
      fontFamily: 'SourceSansPro',
      color: Colors.teal.shade100,
      fontSize: 20.0,
      letterSpacing: 2.5,
      fontWeight: FontWeight.bold,
    ),
  );
}

_phone() {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: Padding(
      padding: EdgeInsets.all(0.0),
      child: ListTile(
        leading: Icon(
          Icons.phone,
          color: Colors.teal,
          size: 25.0,
        ),
        title: Text(
          '+7 907 987 45 56',
          style: TextStyle(
              color: Colors.teal.shade900,
              fontSize: 20.0,
              fontFamily: 'SourceSansPro'),
        ),
      ),
    ),
  );
}

_email() {
  return Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    child: Padding(
      padding: EdgeInsets.all(0.0),
      child: ListTile(
        leading: Icon(
          Icons.email,
          color: Colors.teal,
          size: 25.0,
        ),
        title: Text(
          'wow@email.com',
          style: TextStyle(
              color: Colors.teal.shade900,
              fontSize: 20.0,
              fontFamily: 'SourceSansPro'),
        ),
      ),
    ),
  );
}
