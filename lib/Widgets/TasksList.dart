import 'package:flutter/material.dart';
import 'package:todoeyflutter/Widgets/TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/TaskData.dart';

class TasksList extends StatelessWidget {
//  final Function checkboxCallBack;
//  TasksList(this.tasks, this.checkboxCallBack);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallBack: (checkBoxState) {
                taskData.toggleTask(index);
              },
              onLogPressCallBack: () {
                print('heeeey');
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
