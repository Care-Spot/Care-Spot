import 'package:flutter/material.dart';

class AmbulanceView extends StatefulWidget {
  const AmbulanceView({ Key? key }) : super(key: key);

  @override
  _AmbulanceViewState createState() => _AmbulanceViewState();
}

class _AmbulanceViewState extends State<AmbulanceView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Ambulance View"),
      ),
    );
  }
}