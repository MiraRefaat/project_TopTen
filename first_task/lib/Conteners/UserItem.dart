import 'package:first_task/Model/UserModel.dart';
import 'package:flutter/material.dart';


class UserItem extends StatelessWidget {
  UserItem({required this.userModle});
  UserModle userModle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue,
          child: Text(
            userModle.number!,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userModle.name!,
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              Text(
                userModle.phone!,
                style: TextStyle(fontSize: 18, color: Colors.green),
              )
            ],
          ),
        )
      ]),
    );
  }
}