import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/home.dart';
import 'Provider/app_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<app_provider>(create: (context) => app_provider(),
      child: MaterialApp(
        home: home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}