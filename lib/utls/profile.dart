import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({ Key? key }) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white10,
        leading: 
        // const CircleAvatar(
        //   backgroundImage: AssetImage('assets.profile.png'),
        // );
        Icon(Icons.keyboard_backspace, color: Colors.black,),
        actions: [
         const CircleAvatar(
            // Alignment.center,
            backgroundImage: AssetImage('assets/circle.png'),
           
             
          ),
          IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_none, color: Colors.black,)),
          
        ],
        bottom: const PreferredSize(child: Text('',
        textAlign: TextAlign.center,
        style: TextStyle(color: Color.fromARGB(255, 0, 145, 5), fontSize: 20,
        ),
        ), 
        preferredSize: Size.fromHeight(60)),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10,right: 10 ,top: 30),
        children: [
          const SizedBox(height: 30),
        Container(
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: ListTile(
              title:  Text("Name: ",style: TextStyle(
                height: 0,
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
            //   trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
        const Divider(color: Colors.black, height: 30,),

        const SizedBox(height: 1),
        Container(
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: ListTile(
              title:  Text("D.O.B: ",style: TextStyle(
                height: 0,
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
            //   trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
        const Divider(color: Colors.black, height: 30,),

        
        const SizedBox(height: 1),
        Container(
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: ListTile(
              title:  Text(
                "Address: ",
                textAlign: TextAlign.left, 
                style: TextStyle(
                  height: 0,
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18,
                 ),),
            //   trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
        const Divider(color: Colors.black, height: 30,),

        
        const SizedBox(height: 1),
        Container(
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: ListTile(
              title:  Text("Contacts: ",style: TextStyle(
                height: 0,
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
            //   trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
        const Divider(color: Colors.black, height: 30,),

        
        ],
      ),
    );
  }
}