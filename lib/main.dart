import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_seconds_app/provider/auth_provider.dart';
import 'package:todo_seconds_app/provider/todo_provider.dart';
import 'package:todo_seconds_app/view/home/home_page.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthController()),
      ChangeNotifierProvider(create: (context) => TodoController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      home: HomePage(),
    );
  }
}
