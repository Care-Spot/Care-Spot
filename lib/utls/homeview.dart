import 'package:flutter/material.dart';

class HomView extends StatefulWidget {
  const HomView({ Key? key }) : super(key: key);

  @override
  _HomViewState createState() => _HomViewState();
}

class _HomViewState extends State<HomView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: const EdgeInsets.only(left: 20, right: 20,top: 30),
          children: [
            Row(
              children: 
                 const  [Text(
                    'Welcome \nBruce Leslie',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color.fromARGB(255, 0, 145, 5),
                      fontSize: 20,),
                  ),
                  Spacer(),
                  Icon(Icons.notifications_none,
                  color:  Colors.black,)
                ],
            ),
               const SizedBox(
                height: 80,
              ),
              Card(
                // shape: ShapeBorder(),
                elevation: 4,
              color: const  Color.fromARGB(255, 0, 211, 7),
              child: SizedBox(
                 height: 180,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        
                        children: [
                          const Text('We Care ...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:21,
                            fontWeight: FontWeight.w500
                          ),),
                          
                          Container(

                          )
                        ],
                      ),
                      Image.asset('name',
                      height: 50,
                      width: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(20),
            //   child: const Text(
            //     'We Care ...',
            //     textAlign: TextAlign.left,
            //     style: TextStyle(color:Colors.white,
            //       fontSize: 30,
            //       fontWeight: FontWeight.w500),
            //   ),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Color.fromARGB(255, 0, 145, 5),
            //   ),
            //   height: 180,
            //   width: 40,
            // ),
           const SizedBox(
              height: 35,
            ),
            Container(
              child: const ListTile(
                leading: Icon(Icons.search,
                color: Colors.white,
                ),
              ),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 0, 211, 7),
              ),
              height: 45,
              width: 40,
            ),

          const SizedBox(
              height: 100,
              width: 100,
            ),
          
          ],
          
        );
        
  }
}