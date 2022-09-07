import 'package:flutter/material.dart';
import 'package:stories/storydesign.dart';
import 'storyview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openStory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryView(),
      ),
    );
  }

  List<String> listimages = [
    "https://cdn.pixabay.com/photo/2017/08/08/22/27/girl-2612935_960_720.jpg",
    "https://cdn.pixabay.com/photo/2018/05/13/14/52/boys-3396713__340.jpg",
    "https://cdn.pixabay.com/photo/2018/05/02/09/29/auto-3368094__340.jpg",
    "https://cdn.pixabay.com/photo/2015/09/25/13/58/autumn-957439_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/11/16/08/54/kids-2953756_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/03/09/08/04/kids-2128810__340.jpg",
    "https://cdn.pixabay.com/photo/2015/01/06/11/06/london-590114__340.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('S O F T F I R E'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return index == 0 ? GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        color: Colors.grey[200]
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ),
                )  : StoryDesign(
                function: _openStory,
                imagename: listimages[index - 1],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
