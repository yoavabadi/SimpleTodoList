import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class NewTodoDialog extends StatelessWidget{
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Todo'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Cancel'),
          onPressed: (){
            controller.clear();
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Add'),
          onPressed: (){
            final todo = Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}