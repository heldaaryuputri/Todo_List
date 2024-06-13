import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/Models/todo.dart';
import 'package:todo_list_provider/Providers/todo_provider.dart';


class TodoItem extends StatelessWidget {
  final Todo todo;


  TodoItem({required this.todo});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: todo.isCompleted,
        onChanged: (bool? value) {
          Provider.of<TodoProvider>(context, listen: false)
              .toggleTodoStatus(todo.id);
        },
      ),
      onLongPress: () {
        Provider.of<TodoProvider>(context, listen: false).removeTodo(todo.id);
      },
    );
  }
}
