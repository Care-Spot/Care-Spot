import 'dart:ui';

import 'package:care_spot_pro/screens/homepage_screen.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.only(left: 15, right: 15,top: 100),
          children: [
            Container(
              child: const Text(
                'Who needs our services?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 0, 145, 5), fontSize: 25,),
              ),
            ),

            const SizedBox(height: 100,),
            Container(
              child: Center(
                child: Text(
                  'A Disabled Person',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 17,),
                  ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 204, 204, 204),
              ),
              height: 40,
              width: 40,
            ),

             const SizedBox(height: 35,),
            Container(
              child: Center(
                child: Text(
                  'An Elderly Relative',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 17,),
                  ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 204, 204, 204),
              ),
              height: 40,
              width: 40,
            ), 
            const SizedBox(height: 35,),
            Container(
              child: const Center(
                child: Text(
                  'A Sick Relative',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 17,),
                  ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 204, 204, 204),
              ),
              height: 40,
              width: 40,
            ),

            const SizedBox(height: 35,),
            Container(
              child: const Center(
                child: Text(
                  'Nursing Mothers',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 17,),
                  ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 204, 204, 204),
              ),
              height: 40,
              width: 40,
            ),
          //  onPressed. () {
          //   Navigator.push(context, MaterialPageRoute(builder: ((context) => 
          //   const HomePage)));
          // }
    
    
              const SizedBox(height: 75,),
            InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                child: const Center(
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 0, 211, 7),
                ),
                height: 50,
                width: 40,
              ),
            ),
            
            SizedBox(height: 40,),
    
              Container(
                child: const Center(
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey, fontSize: 18,),
                  ),
                ),
              )
    
    
          ],
        ),
      ),
    );
  }
}
