import 'package:first_task/FaceApp.dart';
import 'package:first_task/Screen/UserScreen.dart';
import 'package:first_task/SignUp.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
 Login ();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
            title: const Text(
              "Login Screen ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Login",
              style: TextStyle(
                fontSize: 30,
              ),
              ),
               const SizedBox(
                    height: 20,
                  ),
                   TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      prefix:Icon(Icons.email) ,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "password  ",
                      suffix: Icon(Icons.visibility),
                      prefix: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(Icons.lock)),
                    ),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => UserScreen(),));
                        
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ), 
                    
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("can't I have an accont "),
                      TextButton(onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>Register()));
                      }, child: const Text("Sign Up")),
                    ],
                  )
                 
             ],
           ),
          ),);
  }
  }