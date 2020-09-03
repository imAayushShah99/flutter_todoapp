import 'package:flutter/material.dart';
import 'package:flutter_todoapp/models/task.dart';


class TaskData extends ChangeNotifier{
  List<Task> task = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy ice'),
  ];

  void deleteTask(Task tasks){
    task.remove(tasks);
    notifyListeners();
  }

  int get taskLength{
    return task.length;
  }

  void addTask(String addTaskTitle){
    final tasks = Task(name: addTaskTitle);
    task.add(tasks);

    notifyListeners();
  }

  void updateTask(Task tasks){
    tasks.toggleDone();
    notifyListeners();
  }


}