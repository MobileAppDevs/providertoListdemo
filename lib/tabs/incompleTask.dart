import 'package:exampleprovidertolist/providers/todotaskproviders.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
//import 'package:providerexample/providers/todotaskproviders.dart';

import '../TaskList.dart';

class InCompletedtask extends StatelessWidget {
  const InCompletedtask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodoModel>(
          builder:(context,todos,child)=>TaskLIst(
            tasks:todos.getInCompleteTask,
          )
      ),
    );
  }
}
