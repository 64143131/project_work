import 'package:flutter/material.dart';
import 'package:project_work/Add_Todolist.dart';
import 'package:project_work/homepage_screen.dart';
import 'package:project_work/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddTodoList(),
    );
  }
}
