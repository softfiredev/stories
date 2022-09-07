import 'package:flutter/material.dart';

class MyStory3 extends StatelessWidget {
  const MyStory3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2018/05/02/09/29/auto-3368094__340.jpg"),
              fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
