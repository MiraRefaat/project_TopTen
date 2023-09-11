import 'package:flutter/material.dart';

class FaceApp extends StatelessWidget {
  String phone;
  String name;

  FaceApp({required this.phone,required this.name});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
        backgroundColor:Colors.blue,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                child: ClipOval(
                  child: Icon(Icons.person ,size: 50),
                ),
               radius:50,
              ),
               Center(
              child: Text(name!,
              style: TextStyle(
                color:Colors.white ,
                fontSize: 40,
                fontFamily: "Qwitcher Grypen",
               ) )),
               const Center(
               child: Text("Software Engineer",
               style: TextStyle(
                 color:Colors.white , ) )),

              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                child:  Row(
                  children: [
                    Icon(Icons.phone),
                    Center(
                      child: Text(
                         phone,
                          style: TextStyle(
                            color: Colors.blue, ),
                          ),),
                  ],
                ),),
                
                Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(Icons.link),
                    const Center(
                      child: Text(" http://thinkdiff.net",
                          style: TextStyle(
                            color: Colors.blue, )),
                    ),
                  ],
                ),),
                Container(
                color: Colors.white,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [Icon(Icons.flag_sharp),
                    const Center(
                      child: Text(" Atomika",
                          style: TextStyle(
                            color: Colors.blue,
                           
                          )),
                    ),
                  ],
                ),),
            ],
          ),
       );


  }
  
  }