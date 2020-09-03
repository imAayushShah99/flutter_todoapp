import 'package:flutter/material.dart';
import 'package:flutter_todoapp/models/task_data.dart';
import 'package:flutter_todoapp/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskData ,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              taskTitle: taskData.task[index].name,
              isChecked: taskData.task[index].isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(taskData.task[index]);
              },
              removeCallback: (){
                taskData.deleteTask(taskData.task[index]);
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },

    );
  }
}
