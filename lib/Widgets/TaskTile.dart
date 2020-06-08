import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function onLogPressCallBack;
  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkboxCallBack,
      this.onLogPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLogPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}

//class TaskCheckBox extends StatelessWidget {
//  final bool checkBoxState;
//  Function toggleCheckBoxState;
//  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: checkBoxState,
//      onChanged: toggleCheckBoxState,
//    );
//  }
//}
