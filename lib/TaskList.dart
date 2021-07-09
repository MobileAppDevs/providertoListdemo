import 'package:exampleprovidertolist/taskListItem.dart';
import 'package:flutter/material.dart';

import 'models/Tasks.dart';



class TaskLIst extends StatelessWidget {
  final List<Task> tasks;
   TaskLIst({Key key, @required this.tasks})
       : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:getChildrenTask(),
    );
  }

 List<Widget> getChildrenTask(){
    return tasks.map((todo) => TaskListItem(task: todo)).toList();
 }
}
