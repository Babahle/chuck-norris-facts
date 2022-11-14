import 'package:flutter/material.dart';


class MainTheme{
  static ThemeData lightMode = ThemeData(
    primarySwatch: Colors.brown,
    primaryColor: Colors.brown,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        )
      )
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.brown,
    ),
    scaffoldBackgroundColor: Colors.amber,
  );
}