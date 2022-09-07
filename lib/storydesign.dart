import 'package:flutter/material.dart';

class StoryDesign extends StatelessWidget {
  final function;
  final imagename;

   StoryDesign({this.function, this.imagename});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(imagename),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
