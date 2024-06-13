import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/Providers/todo_provider.dart';
import 'package:todo_list_provider/Screens/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        title: 'Todo List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TodoListScreen(),
      ),
    );
  }
}
