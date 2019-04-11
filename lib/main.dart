import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/todo_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TodoListScreen(),
    );
  }

}

