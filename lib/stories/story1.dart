import 'package:flutter/material.dart';

class MyStory1 extends StatelessWidget {
  const MyStory1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/08/22/27/girl-2612935_960_720.jpg"),
              fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
