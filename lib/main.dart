import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/providers/task_provider.dart';
import 'package:flutter_todo/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'To-do App',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: AppRoutes.routes,
      ),
    );
  }
}