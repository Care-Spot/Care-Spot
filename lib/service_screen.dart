
import 'package:flutter/material.dart';
class ServiceScreen extends StatefulWidget {
  const ServiceScreen({ Key? key }) : super(key: key);

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
      //Form Key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Who needs our services',
          style: TextStyle(color: Colors.green),),
        ),
        
        
      ),
    );
  }
}