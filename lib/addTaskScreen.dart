// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'package:todos/providers/todos_model.dart';
// import 'package:todos/models/task.dart';
//
// class AddTaskScreen extends StatefulWidget {
//   @override
//   _AddTaskScreenState createState() => _AddTaskScreenState();
// }
//
// class _AddTaskScreenState extends State<AddTaskScreen> {
//   final taskTitleController = TextEditingController();
//   bool completedStatus = false;
//
//   @override
//   void dispose() {
//     taskTitleController.dispose();
//     super.dispose();
//   }
//
//   void onAdd() {
//     final String textVal = taskTitleController.text;
//     final bool completed = completedStatus;
//     if (textVal.isNotEmpty) {
//       final Task todo = Task(
//         title: textVal,
//         completed: completed,
//       );
//       Provider.of<TodosModel>(context, listen: false).addTodo(todo);
//       Navigator.pop(context);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Task'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(15.0),
//             child: Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   TextField(controller: taskTitleController),
//                   CheckboxListTile(
//                     value: completedStatus,
//                     onChanged: (checked) => setState(() {
//                       completedStatus = checked;
//                     }),
//                     title: Text('Complete?'),
//                   ),
//                   RaisedButton(
//                     child: Text('Add'),
//                     onPressed: onAdd,
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }



import 'package:exampleprovidertolist/providers/todotaskproviders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:providerexample/providers/todotaskproviders.dart';

import 'models/Tasks.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key key}) : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final taskTitleController = TextEditingController();
   bool completedStatus = false;

   @override
  void dispose() {
     taskTitleController.dispose();
    // TODO: implement dispose
    super.dispose();
  }



  void onAdd(){
     final String textvalue = taskTitleController.text;
     final bool completed = completedStatus;

     if(textvalue.isNotEmpty){
       final Task todo = Task (
         title: textvalue,
         done: completed
       );
       Provider.of<TodoModel>(context, listen: false).addTask(todo);
     Navigator.pop(context);
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),

      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(controller: taskTitleController),
                  CheckboxListTile(
                    value: completedStatus,
                    onChanged: (checked) => setState(() {
                      completedStatus = checked;
                    }),
                    title: Text('Complete?'),
                  ),
                  RaisedButton(
                    child: Text('Add'),
                    onPressed: onAdd,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
