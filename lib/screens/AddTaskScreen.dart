import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/TaskData.dart';

class AddTaskScreen extends StatelessWidget {
  String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0))),
        child: Container(
          padding: EdgeInsets.only(top: 30.0, left: 50, right: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style:
                    (TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0)),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  taskName = value;
                  print(taskName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  print(taskName);

                  Provider.of<TaskData>(context, listen: false).add(taskName);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
