import 'package:flutter/material.dart';
import 'package:stories/progress_bar.dart';

class StoryBars extends StatelessWidget {
  List<double> percenttimeWatched = [];

  StoryBars({required this.percenttimeWatched});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50,),
      child: Row(
        children: [
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[0]),
          ),
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[1]),
          ),
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[2]),
          ),
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[3]),
          ),
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[4]),
          ),
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[5]),
          ),
          Expanded(
            child: MyProgressBar(percentWatched: percenttimeWatched[6]),
          ),
        ],
      ),
    );
  }
}
