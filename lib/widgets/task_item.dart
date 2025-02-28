import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/providers/task_provider.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(task.imageUrl)),
                SizedBox(width: 10),
                Text(task.username, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Text(task.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(task.content, style: TextStyle(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Checkbox(
                  value: task.isCompleted,
                  onChanged: (value) {
                    Provider.of<TaskProvider>(context, listen: false).toggleTask(
                      Provider.of<TaskProvider>(context, listen: false).tasks.indexOf(task),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}