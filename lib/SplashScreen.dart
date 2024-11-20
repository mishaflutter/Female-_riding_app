import 'package:flutter/material.dart';
import 'package:untitled/homescreen.dart';
import 'dart:async';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initstate(){
    super.initState();
    Timer (Duration(seconds: 2), ()=>
    Navigator.push(context, MaterialPageRoute(builder:(context)=>Homescreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assest/car.png'),
    );
  }
}
