import 'package:flutter/material.dart';
import 'package:untitled/homescreen.dart';
import 'package:untitled/main.dart';
import 'package:untitled/rentScreen.dart';
import 'package:untitled/usermodel.dart';
import 'package:untitled/widget/button.dart';
import 'package:http/http.dart';
import 'databasehelper.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  final emailcontroller= TextEditingController();

  final passwordcontroller= TextEditingController();
  void login(String email , password) async{
    try{
      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
          body:{
            'email' : email,
            'password' : password,});
      if(response.statusCode == 200){
        print('account created successfully');
      }else {
        print('failed');}
    }catch (e){print(e.toString());}}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Icon(Icons.logout)
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('LOGIN SCREEN',style: TextStyle( color: Colors.white),)
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller:emailcontroller ,
              decoration: InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              )
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
                controller:passwordcontroller ,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                )
            ),
            SizedBox(
              height: 40,
            ),
            button(
                onTap: ()async{
                  final user=await DatabaseHelper().getUser(
                    emailcontroller.text,
                    passwordcontroller.text,
                  );
                  if(user!=null){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>rentScreen()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Create an account')));
                  }
                },
                title: Center(child: Text('login',style: TextStyle(color:Colors.white),)))
          ],
        ),
      ),

    );
  }
}


