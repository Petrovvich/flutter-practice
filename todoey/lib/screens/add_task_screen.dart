import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'New task',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              FlatButton(
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
