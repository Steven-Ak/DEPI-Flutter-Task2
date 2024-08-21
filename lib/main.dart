import 'package:flutter/material.dart';
import 'package:flutter_task_2/user.dart';
import 'user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UserProfile(user: getUser())
    );
  }
}

User getUser(){
  User user1 = User(id: 1,
      name: "Steven Akram",
      username: "@stevenakram",
      address: "Hurghada, Egypt",
      followers: 500,
      following: 200);

  User user2 = User(id: 2,
      name: "Hossam Ahmed",
      username: "@hossamahmed",
      img: "assets/images/therock.jpg",
      address: "Cairo, Egypt",
      followers: 6000,
      following: 500);

  return user2;
}