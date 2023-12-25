import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(



  brightness: Brightness.light,


   iconTheme: const IconThemeData(color: Colors.black),

  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.white),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black,
  ),



);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,


  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white),

   iconTheme: const IconThemeData(color: Colors.white),

  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
);
