import 'dart:ui';

import 'package:care_spot_pro/utls/ambulance.dart';
import 'package:care_spot_pro/utls/consultation.dart';
import 'package:care_spot_pro/utls/homeview.dart';
import 'package:care_spot_pro/utls/profile.dart';
import 'package:care_spot_pro/utls/records.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _currentindex = 2;

   void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  List<Widget> navPages = [
     const RecordsView(),
     const AmbulanceView(),
     const HomView(),
     const ConsultationView(),
     const ProfileView()
  ];

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // tabs [_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: [
             BottomNavigationBarItem(
            icon: Image.asset("assets/records.png",width: 25,height: 25,),
            label: 'Records',
          ),
          
           BottomNavigationBarItem(
            icon: Image.asset("assets/ambulance.png",width: 25,height: 25,),
            label: 'Ambulance',
          ),
          
             BottomNavigationBarItem(
            icon:  Image.asset("assets/home.png",width: 25,height: 25,),
            label: 'Home',
          ),

           BottomNavigationBarItem(
            icon:  Image.asset("assets/consultation.png",width: 25,height: 25,),
            label: 'Consultation',
          ),
           BottomNavigationBarItem(
            icon:  Image.asset("assets/profile.png",width: 25,height: 25,),
            label: 'Profile',
          ),
          
          ],
          unselectedItemColor: Colors.black54,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: (index) => _onItemTapped(index) 
        ),
        body: Center(
          child: navPages.elementAt(_currentindex),
        )
         
      ),
      
    );
    
  }
}