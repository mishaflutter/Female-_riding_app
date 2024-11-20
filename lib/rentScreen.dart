import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/widget/carScreen.dart';
class rentScreen extends StatelessWidget {
  const rentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Row(
               children: [
                 Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
                 SizedBox(width: 30,),
                 Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
               ],
                ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
                  SizedBox(width: 30,),
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
                  SizedBox(width: 30,),
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
                  SizedBox(width: 30,),
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
                  SizedBox(width: 30,),
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),
                  SizedBox(width: 30,),
                  Carscreen(title: 'Toyota', subtitle: 'fortuner', imagepath: 'assest/dream.jpg', discription: '50000', onTap:(){}),

                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
