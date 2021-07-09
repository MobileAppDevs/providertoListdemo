import 'package:flutter/material.dart';

class Task
{
  String title;
  bool done;

  Task({@required this.title,this.done=false});

  void toggleDone(){
    done =!done;
  }

}