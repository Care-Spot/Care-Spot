import 'package:flutter/material.dart';

class ConsultationView extends StatefulWidget {
  const ConsultationView({ Key? key }) : super(key: key);

  @override
  _ConsultationViewState createState() => _ConsultationViewState();
}

class _ConsultationViewState extends State<ConsultationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white10,
        leading:const Icon(Icons.subject, color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_none, color: Colors.black,))
        ],
        bottom: const PreferredSize(child: Text(  'Chat with \nyour practitioner',
              textAlign: TextAlign.left,
              style: TextStyle(color: Color.fromARGB(255, 0, 145, 5), fontSize: 25,
              ),), 
        preferredSize: Size.fromHeight(50)),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30,),
        children: [
         
        
          Container(
            child: const ListTile(
              leading: Icon(Icons.search,
              color: Colors.white,
              ),
            ),
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const
               Color.fromARGB(255, 0, 211, 7),
            ),
            height: 45,
            width: 40,
          ),
          const SizedBox(height: 18),
        Container(
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ListTile(
              leading:  CircleAvatar(
                   backgroundImage:AssetImage('assets/circle.png') ,
                 ),
              title:  Text("Nurse Bruce \nTaifa Hospital",style: TextStyle(
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
              trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
        Divider(color: Colors.black,),

        const SizedBox(height: 18),
        Container(
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ListTile(
              leading:  CircleAvatar(
                   backgroundImage:AssetImage('assets/circle.png') ,
                 ),
              title:  Text("Nurse Azia \nLabadi Hospital",style: TextStyle(
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
              trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
        const Divider(color: Colors.black,),

        const SizedBox(height: 18),
        Container(
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ListTile(
              leading:  CircleAvatar(
                   backgroundImage:AssetImage('assets/circle.png') ,
                 ),
              title:  Text("Nurse Kwesi \nTema Hospital",style: TextStyle(
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
              trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
       const Divider(color: Colors.black,),

       const SizedBox(height: 18),
        Container(
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ListTile(
              leading:  CircleAvatar(
                   backgroundImage:AssetImage('assets/circle.png') ,
                 ),
              title:  Text("Nurse Jollof \nKasoa Hospital",style: TextStyle(
                   color: Color.fromARGB(255, 0, 211, 7),
                   fontSize: 18
                 ),),
              trailing: Icon(Icons.arrow_forward_ios,size: 16, color: Color.fromARGB(255, 0, 211, 7),),
            ),
           
          ),
        ),
       const Divider(color: Colors.black,),

    
        ],
      ),
    );
  }
}