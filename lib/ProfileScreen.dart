import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  final Usernamecontroller = TextEditingController();
  final Gendercontroller = TextEditingController();
  final Aboutcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final  _formKey = GlobalKey<FormState>();
 Profilescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Profile',style: TextStyle(color: Colors.white,) ,),
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
                  backgroundImage: AssetImage('assest/logo.png'),
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
                              labelText:'User name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                              )
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Pleas Enter your User name';}
                            return null ;
                          },
                          controller:Usernamecontroller,
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          validator:(value) {
                            if( value == null || value.isEmpty){
                              return 'Enter your full name';
                            }
                            return null;
                          } ,
                          controller:Gendercontroller,
                          decoration: InputDecoration(
                              labelText: 'Gender',
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),

                              )
                          ),
                        ), SizedBox(height: 15,),
                        TextFormField
                          (validator:(value) {
                          if( value == null || value.isEmpty){
                            return 'Enter your gender';
                          }
                          return null;
                        } ,

                            controller:Aboutcontroller,
                            decoration: InputDecoration(
                              labelText: 'About',
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(7),
                              )
                          ),
                        ),
                        SizedBox(height: 15,),

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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
