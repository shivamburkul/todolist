import 'package:flutter/material.dart';
import 'package:todoList/pages/splash_screen.dart';

void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "todoList",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SplashScreen()
    );
  }
}

