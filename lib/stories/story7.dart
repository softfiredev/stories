import 'package:flutter/material.dart';

class MyStory7 extends StatelessWidget {
  const MyStory7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/01/06/11/06/london-590114__340.jpg"),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
