import 'package:flutter/material.dart';
import 'package:untitled/NotificationScreen.dart';
import 'package:untitled/ProfileScreen.dart';
import 'package:untitled/SignUP.dart';
import 'package:untitled/login.dart';
import 'package:untitled/widget/button.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
 int _selectIndex=0;
 final List<Widget> _pages = [
   Center(child: Text('Home Page')),
   Center(child: Text('Search Page')),
   Center(child: Text('Profile Page')),
 ];

  bool _isfavourit=false;
  void _isupdate(){
    setState(() {
      _isfavourit=! _isfavourit;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.ice_skating), label: 'home',),
            BottomNavigationBarItem(icon: Icon(Icons.ice_skating), label: 'Notication'),
            BottomNavigationBarItem(icon: Icon(Icons.ice_skating), label: 'profile')


          ],
        currentIndex: _selectIndex,
        onTap: (index){switch(index){
          case 0:
        Navigator.push(context,MaterialPageRoute(builder:(context) =>Homescreen()));
      break;
          case 1:
            Navigator.push(context,MaterialPageRoute(builder:(context) =>Notificationscreen()));
      break;
          case 2:
            Navigator.push(context,MaterialPageRoute(builder:(context) =>Profilescreen()));
break;
        }},
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
      ),
      body: Container(
        height: double.infinity,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>login()));
                } ,
                title: Center(child: Text('login')),
              ),
              SizedBox(
                height: 40,
              ),
              button(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUP()));
              }, title:Center(child: Text('Sign')),
              ),
              Row(children: [
                IconButton(
                  onPressed: _isupdate,
                icon:_isfavourit? Icon(Icons.light,color:Colors.yellow,):Icon(Icons.star_border))
              ],)

            ],
          ),
        ),
      ),
    );
  }
}
