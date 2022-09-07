import 'package:flutter/material.dart';

class MyStory6 extends StatelessWidget {
  const MyStory6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/09/08/04/kids-2128810__340.jpg"),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
