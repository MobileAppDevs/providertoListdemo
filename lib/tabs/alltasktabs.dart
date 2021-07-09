// class AllTasksTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Consumer<TodosModel>(
//         builder: (context, todos, child) => TaskList(
//           tasks: todos.allTasks,
//         ),
//       ),
//     );
//   }
// }

import 'package:exampleprovidertolist/providers/todotaskproviders.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
//import 'package:providerexample/providers/todotaskproviders.dart';

import '../TaskList.dart';

class AllTaskTabs extends StatelessWidget {
  const AllTaskTabs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoModel>(
        builder:(context,todos,child)=>
            TaskLIst(
          tasks:todos.allTask,
        )
      ),
    );
  }
}
