import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/home_screen.dart';
import 'package:flutter_todo/screens/add_task_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => HomeScreen(),
    '/add-task': (context) => AddTaskScreen(),
  };
}