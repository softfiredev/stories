
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stories/stories/story4.dart';
import 'package:stories/stories/story5.dart';
import 'package:stories/stories/story6.dart';
import 'package:stories/stories/story7.dart';
import 'package:stories/story_bars.dart';
import 'stories/story1.dart';
import 'stories/story2.dart';
import 'stories/story3.dart';

class StoryView extends StatefulWidget {
  const StoryView({Key? key}) : super(key: key);

  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  int currentindex = 0;
  late  Timer _timer;
  final List<Widget> mystories = [
    MyStory1(),
    MyStory2(),
    MyStory3(),
    MyStory4(),
    MyStory5(),
    MyStory6(),
    MyStory7(),
  ];

  List<double> timewatched = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < mystories.length; i++) {
      timewatched.add(0);
    }

    _startWatching();
  }

  void _startWatching() {
    _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        if (timewatched[currentindex] + 0.01 < 1) {
          timewatched[currentindex] += 0.01;
        }
        else {
          timewatched[currentindex] = 1;
          timer.cancel();

          if (currentindex < mystories.length - 1) {
            currentindex++;
            _startWatching();
          }
          else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void _onTapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    if (dx < screenWidth / 2) {
      setState(() {
        if (currentindex > 0) {
          timewatched[currentindex - 1] = 0;
          timewatched[currentindex] = 0;

          currentindex--;
        }
      });
    }
    else {
      setState(() {
        if (currentindex < mystories.length - 1) {
          timewatched[currentindex] = 1;
          currentindex++;
        }
        else {
          timewatched[currentindex] = 1;
        }
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: Scaffold(
        body: Stack(
          children: [
            // story
            mystories[currentindex],

            StoryBars(
              percenttimeWatched: timewatched,
            ),
          ],
        ),
      ),
    );
  }
}
