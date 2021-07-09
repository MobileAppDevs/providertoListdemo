import 'package:exampleprovidertolist/providers/todotaskproviders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
       // Provider(create: (context) => TodoModel()),
        ChangeNotifierProvider(
          create: (context) => TodoModel(),
        ),
        //Provider(create: (context) => ()),
      ],
      child: MaterialApp(
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    ),
  );
}
