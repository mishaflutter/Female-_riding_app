import 'package:flutter/material.dart';
class button extends StatelessWidget {
final title;
final VoidCallback onTap;
  button({super.key, required this.onTap,required this.title });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.purple,
        ),
        child: title ,
      )
    );
  }
}
