import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/Provider/todo_provider.dart';
import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<todo_provider>
      ( create: (context) => todo_provider(),
      child: MaterialApp(
        home: home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}