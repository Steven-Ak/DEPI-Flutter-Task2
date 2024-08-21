import 'package:flutter/material.dart';
import 'package:flutter_task_2/main.dart';
import 'user.dart';
import 'user_avatar.dart';

class UserBody extends StatelessWidget {
  final User user;

  const UserBody({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: UserPic(user: getUser()),
        ),
        Center(
          child: Text(getUser().name,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23
            ),),
        ),
        Center(
          child: Text(getUser().address,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23
            ),),
        ),
        Container(
          height: 35,
          color: Colors.grey[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text("${getUser().following} Following",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
              ),
              Center(
                child: Text("${getUser().followers} Followers",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
              )
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.facebook, color: Colors.grey,size: 32,),
            Image(image: AssetImage("assets/images/dot.png")),
            Image(image: AssetImage("assets/images/instagram.png")),
            Image(image: AssetImage("assets/images/dot.png")),
            Image(image: AssetImage("assets/images/internet.png"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                  color: themeColor(isPrimary: false),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:  Center(
                child: Text("200 shots", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color:themeColor() ),
                ),
              ),
            ),
            Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Text("10 collections", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        Container(
          width: 350,
          height: 350,
          child: Image.asset("assets/images/noshots.jpg"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                  color: themeColor(isPrimary: false),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child:  Center(
                child: Text("Donate", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: themeColor()),
                ),
              ),
            ),
            Container(
              width: 170,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: themeColor(),
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text("Message", textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: themeColor()),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

Color themeColor({bool isPrimary = true}){
  if(isPrimary) {
    return Colors.deepPurple;
  }
  else{
    return Colors.deepPurple[100]!;
  }
}
