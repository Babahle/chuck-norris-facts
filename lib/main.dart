import 'package:chuck_norris/home.dart';
import 'package:chuck_norris/themes/main_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MainTheme.lightMode,
      home: const HomeView(),
    );
  }
}
