import 'package:first_task/FaceApp.dart';
import 'package:first_task/Login.dart';
import 'package:first_task/Screen/UserScreen.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Sign Up Screen ",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    body: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 30,
           fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
          const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "User Name ",
                      prefix: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(Icons.person)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email ",
                      prefix: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(Icons.email)),
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
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "formite  password  ",
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
                         Navigator.push(context,
                          MaterialPageRoute(builder:(context) => UserScreen() ,));
                      },
                      child: const Text(
                        "Sign Up ",
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
                      const Text(" Already have an account "),
                      TextButton(onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>Login()));
                      }, child: const Text("login")),
                    ],
                  )
        
      ],
    ),
),
    );
  }
}

