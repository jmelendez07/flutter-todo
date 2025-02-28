import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task.dart';

class TaskProvider with ChangeNotifier {
  //Persistencia de los datos profe :)
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title, String username, String content, String imageUrl) {
    _tasks.add(Task(title: title, username: username, content: content, imageUrl: imageUrl));
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].isCompleted = !_tasks[index].isCompleted;
    notifyListeners();
  }
}