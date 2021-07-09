import 'package:exampleprovidertolist/tabs/alltasktabs.dart';
import 'package:exampleprovidertolist/tabs/completedTask.dart';
import 'package:exampleprovidertolist/tabs/incompleTask.dart';
import 'package:flutter/material.dart';


import 'addTaskScreen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDos"),
        actions:<Widget> [
          IconButton(icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTaskScreen(),
                ),
              );
            },)
        ],
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete'),
          ],
        ),

      ),
      body: TabBarView(
        controller: controller,
         children: <Widget>[
           AllTaskTabs(),
           InCompletedtask(),
           CompletedTask(),
         ],
      ),
    );
  }
}
