import 'package:flutter/material.dart';
class Carscreen extends StatelessWidget {
  final title;
  final subtitle;
  final String imagepath;
  final discription;
  final VoidCallback onTap;
  Carscreen({super.key,required this.title,required this.subtitle,required this.imagepath,required this.discription,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 250,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                spreadRadius: 5,                      // Spread radius
                blurRadius: 10,                       // Blur radius
                offset: Offset(0, 5),                 // Offset in x and y
              ),
            ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
          width: 100,
          child: Image.asset(imagepath),  ),
            SizedBox(
              height: 20,
            ),
            Text(title,style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Text(subtitle,style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            Text(discription,style: TextStyle(fontSize: 15),),
          ],

        ),
      ),
    );
  }
}
