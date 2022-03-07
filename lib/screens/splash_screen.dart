import 'dart:async';
import 'dart:ffi';

import 'package:care_spot_pro/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }
  void navigateToLogin() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context) => const LoginScreen())));
      
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const[
        Expanded(
          flex: 5,
          child: Center(
            child: Image(
              image: AssetImage(
                'asset/splash.jpg',
                ),
                width:50,
                height: 50,
                ),
          ), 
        
        ),
        Expanded(
          child: Center(
            child: Text('CareSpot',
            style: TextStyle(fontSize: 20, color: Colors.white),
            ))
      )],),
    );
  }
}