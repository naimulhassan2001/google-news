import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_news/view/screen/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.black),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.white),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
          ),


        backgroundColor: Colors.red,


      ),




      darkTheme: ThemeData(

          backgroundColor: Colors.green,

          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
      ),
      home: MainScreen(),
    );
  }
}
