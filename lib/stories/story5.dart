import 'package:flutter/material.dart';

class MyStory5 extends StatelessWidget {
  const MyStory5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/11/16/08/54/kids-2953756_960_720.jpg"),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
