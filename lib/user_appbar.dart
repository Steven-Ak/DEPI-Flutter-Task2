import 'package:flutter/material.dart';
import 'package:flutter_task_2/user_body.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: const Icon(Icons.arrow_back, color: Colors.black45,),
      backgroundColor: themeColor(),
      title: Text(title,
          style: const TextStyle(color: Colors.black45, fontSize: 25)),
      actions: [
        Container(
            width: 105,
            height: 40,
            margin: const EdgeInsets.only(right: 15, left: 5),
            decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text("Follow", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            )
        )],
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(56);
}