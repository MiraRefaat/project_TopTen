import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:first_task/Login.dart';
import 'package:first_task/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Mypp());
}

class Mypp extends StatelessWidget {
  const Mypp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: 
    AnimatedSplashScreen (backgroundColor: Colors.blue, splash:const CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage('assets/Top Ten.png'),) ,
		nextScreen: Login(),
		
	),
     
    
    
    );
  }
}


