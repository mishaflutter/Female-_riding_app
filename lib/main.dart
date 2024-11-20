import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:untitled/ProfileScreen.dart';
import 'package:untitled/SignUP.dart';
import 'package:untitled/SplashScreen.dart';
import 'package:untitled/homescreen.dart';
import 'package:untitled/rentScreen.dart';
import 'databasehelper.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}

