import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;
  final Function checkboxCallback;
  final Function removeCallback;
  TasksTile({this.removeCallback , this.isChecked , this.taskTitle , this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeCallback ,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough:null,
        ),
      ),
      trailing:  Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback ,
        ),
      );
  }
}
