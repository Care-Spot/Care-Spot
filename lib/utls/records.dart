import 'package:flutter/material.dart';

class RecordsView extends StatefulWidget {
  const RecordsView({ Key? key }) : super(key: key);

  @override
  _RecordsState createState() => _RecordsState();
}

class _RecordsState extends State<RecordsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white10,
        leading: Icon(Icons.subject, color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none, color: Colors.black,))
        ],
        bottom: PreferredSize(child: Text(  'Personal \nHealth Record',
              textAlign: TextAlign.left,
              style: TextStyle(color: Color.fromARGB(255, 0, 145, 5), fontSize: 25,
              ),), 
        preferredSize: Size.fromHeight(50)),
      ),
        body: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30,),
          children: [
         SizedBox(height: 10),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Patient's Information",style: TextStyle(
                  color: Color.fromARGB(255, 0, 211, 7),
                  fontSize: 18
                ),),
                 Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),)
              ],
            ),
          ),
        ),
        Divider(color: Colors.black,),
        
         SizedBox(height: 30),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Health Condition",style: TextStyle(
                  color: Color.fromARGB(255, 0, 211, 7),
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),)
              ],
            ),
          ),
        ),
        Divider(color: Colors.black,),

        SizedBox(height: 30),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Allergies",style: TextStyle(
                  color: Color.fromARGB(255, 0, 211, 7),
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),)
              ],
            ),
          ),
        ),
        Divider(color: Colors.black,),

        SizedBox(height: 30),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Medications",style: TextStyle(
                  color: Color.fromARGB(255, 0, 211, 7),
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),)
              ],
            ),
          ),
        ),
        Divider(color: Colors.black,),

        SizedBox(height: 30),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Vacination",style: TextStyle(
                  color: Color.fromARGB(255, 0, 211, 7),
                  fontSize: 18
                ),),
                Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),)
              ],
            ),
          ),
        ),
        Divider(color: Colors.black,),
  
  
  
  
            ],
            
        ),
      );
    
  }
}