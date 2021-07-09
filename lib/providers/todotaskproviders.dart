import 'dart:collection';
import 'package:exampleprovidertolist/models/Tasks.dart';
import 'package:flutter/cupertino.dart';


class TodoModel extends ChangeNotifier
{

  // final List<Task> _task = [];
  final List<Task> _task= [
    Task(title: 'Task One'),
    Task(title: 'Task Two'),
    Task(title: 'Task Three'),
  ];
  //UnmodifiableListView<Task> get allTasks => UnmodifiableListView(_task); 

    //  1. getter for getting list of all task

    UnmodifiableListView<Task> get allTask => UnmodifiableListView(_task);

    // 2. getting List of InCompleted Task

    UnmodifiableListView<Task> get getInCompleteTask =>
        UnmodifiableListView(_task.where((todo) => !todo.done));


    // 3. getting List of Completed Task


    UnmodifiableListView<Task> get getCompletedTask =>
        UnmodifiableListView(_task.where((element) =>element.done ));
  
    // 4. method to add task in list

      void addTask(Task task){
        _task.add(task);
        notifyListeners();
      }

      // 5.  method to to mark a task completed

        void toMarkTodo(Task task){
        final indexOfTask= _task.indexOf(task);
        _task[indexOfTask].toggleDone();
        notifyListeners();
        }


      //6. To delete Task


        void deleteTask (Task task){
          _task.remove(task);
          notifyListeners();
        }


}