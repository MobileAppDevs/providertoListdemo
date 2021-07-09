

import 'package:exampleprovidertolist/providers/todotaskproviders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:providerexample/providers/todotaskproviders.dart';

import 'models/Tasks.dart';

class TaskListItem extends StatelessWidget {
  final Task task;
  const TaskListItem({Key key,this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: task.done,
        onChanged:(bool checked){
          Provider.of<TodoModel>(context, listen: false).toMarkTodo(task);
        } ,
      ),
      title: Text(task.title),
      trailing: IconButton(
        icon: Icon(Icons.delete),

      onPressed: () {
        Provider.of<TodoModel>(context, listen: false).deleteTask(task);
      },
      ),
    );
  }
}
