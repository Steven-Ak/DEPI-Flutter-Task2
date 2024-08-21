import 'package:flutter/material.dart';
import 'package:flutter_task_2/main.dart';
import 'package:flutter_task_2/user_appbar.dart';
import 'user.dart';
import 'user_body.dart';

class UserProfile extends StatelessWidget{
  final User user;
  const UserProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: getUser().username),
      body: UserBody(user: getUser()),
    );
  }
}