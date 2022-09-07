import 'package:flutter/material.dart';

class MyStory4 extends StatelessWidget {
  const MyStory4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2015/09/25/13/58/autumn-957439_960_720.jpg"),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
