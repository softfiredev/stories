import 'package:flutter/material.dart';

class MyStory2 extends StatelessWidget {
  const MyStory2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2018/05/13/14/52/boys-3396713__340.jpg"),
              fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
