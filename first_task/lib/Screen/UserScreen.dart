import 'package:first_task/Conteners/UserItem.dart';
import 'package:first_task/FaceApp.dart';
import 'package:first_task/Model/UserModel.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  UserScreen({super.key});

  List<UserModle> users = [
    UserModle(number: "1", name: "Mariam Wael", phone: "0123456789"),
    UserModle(number: "2", name: "Mario Ashraf", phone: "01023785398"),
    UserModle(number: "3", name: "karol Hany", phone: "01175559923"),
    UserModle(number: "4", name: "Mera Refaat", phone: "01089537294"),
    UserModle(number: "5", name: "Omar Khaled ", phone: "01287349503"),
    UserModle(number: "6", name: "Marina Emad", phone: "01287430054"),
    UserModle(number: "7", name: "Alaa mohamed", phone: "01076302278"),
    UserModle(number: "8", name: "Kyrillos Ayman", phone: "0113908473"),
    UserModle(number: "9", name: "Islam Hassan", phone: "01087239902"),
    UserModle(number: "10", name: "Mariam Bassem", phone: "012438294400"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Colors.blue,
        actions: [ CircleAvatar(radius: 30,
        backgroundImage: AssetImage('assets/Top Ten.png'),),],
        title:Center(
       child:  Text(
          "Top Ten ",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),)
      
       
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var currentUser=users[index];
          return GestureDetector(
            
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context) => FaceApp(phone: currentUser.phone!,name: currentUser.name!,),)),
            child: UserItem(userModle: users[index]),
          );
        },


        separatorBuilder: (context, index) => Divider(
          indent: 20,
          endIndent: 20,
        ),
        itemCount: users.length,
      ),
    );
  }
}