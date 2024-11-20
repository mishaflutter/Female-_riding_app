import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:untitled/databasehelper.dart';
import 'package:untitled/login.dart';
import 'package:untitled/usermodel.dart';
import 'package:untitled/widget/button.dart';
class SignUP extends StatelessWidget {
  final emailcontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final fullnamecontroller = TextEditingController();
  final cniccontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final phonecontroller = TextEditingController();



  final  _formKey = GlobalKey<FormState>();
  SignUP({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.download, color:Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),


        ],
        leading:Container(
          padding: EdgeInsets.all(8),
          child: Image.asset('assest/car.png'),
        ),
        backgroundColor: Colors.purple,
        title: Text('Sign up',style: TextStyle(color: Colors.white,) ,),
        centerTitle: true,
      ),

      body:  Container(
        height: double.infinity,
        width: double.infinity,
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100,),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assest/car.png'),

                ),
                SizedBox( height: 35,),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [

                        TextFormField(
                          decoration: InputDecoration(
                              labelText:'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                              )
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Pleas Enter your email';

                            }
                            return null ;
                          },
                          controller: emailcontroller,
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          validator:(value) {
                            if( value == null || value.isEmpty){
                              return 'Enter your full name';
                            }
                            return null;
                          } ,
                          controller: fullnamecontroller,
                          decoration: InputDecoration(
                              labelText: 'Full Name',
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),

                              )
                          ),
                        ), SizedBox(height: 15,),
                        TextFormField
                          (validator:(value) {
                          if( value == null || value.isEmpty){
                            return 'Enter your age';
                          }
                          return null;
                        } ,

                          controller: agecontroller,
                          decoration: InputDecoration(
                              labelText: 'Age',
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(validator:(value) {
                          if( value == null || value.isEmpty){
                            return 'Enter your password';
                          }
                          return null;
                        } ,

                          controller: passwordcontroller,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(

                              )
                          ),
                        ),  SizedBox(height: 15,),
                        TextFormField(
                          validator:(value) {
                            if( value == null || value.isEmpty){
                              return 'Enter your Phone no';
                            }
                            return null;
                          } ,
                          controller: phonecontroller,
                          decoration: InputDecoration(
                              labelText: 'Phone no',
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),

                              )
                          ),
                        ) , SizedBox(height: 15,),
                        TextFormField(
                          validator:(value) {
                            if( value == null || value.isEmpty){
                              return 'Enter your cnic';
                            }
                            return null;
                          } ,
                          controller: cniccontroller,
                          decoration: InputDecoration(
                              labelText: 'CNIC',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),

                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox( height: 40,),
                button(
                    title:Center(child: Text('signup')),
                  onTap: () async {
                    User user = User(
                      name: fullnamecontroller.text,
                      email: emailcontroller.text,
                      password: passwordcontroller.text,
                      age: int.parse(agecontroller.text),

                    );
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                    await DatabaseHelper().registerUser(user);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Registered!')));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
