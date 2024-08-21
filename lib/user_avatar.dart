import 'package:flutter/material.dart';
import 'package:flutter_task_2/main.dart';
import 'user.dart';

class UserPic extends StatelessWidget{
  final User user;

  const UserPic({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage(getUser().img),
    );
  }
}