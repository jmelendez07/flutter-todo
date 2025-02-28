import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/providers/task_provider.dart';
import 'package:flutter_todo/widgets/task_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text('To-do List Jose Melendez')),
      body: ListView.builder(
        itemCount: taskProvider.tasks.length,
        itemBuilder: (context, index) {
          return TaskItem(task: taskProvider.tasks[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-task');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}