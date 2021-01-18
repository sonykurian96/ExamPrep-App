import 'package:flutter/material.dart';
import 'package:/flutter_app/Library Section/VideoPage.dart';

class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  List<String> list = [
    'Introduction to Data Structures',
    'Linked list',
    'Graphs',
    'Heaps',
    'Sorting Techniques',
    'Stack',
    'Queue',
    'Tree'
  ];

  List<String> videoList = [
    "https://youtu.be/bum_19loj9A", // introduction
    "https://youtu.be/_jQhALI4ujg", // linked list
    "https://youtu.be/D21-XVw6nYw", // graphs
    "https://youtu.be/2DmK_H7IdTo", // heaps
    "https://youtu.be/kgBjXUE_Nwc", // sorting techniques
    "https://youtu.be/bxRVz8zklWM", // stack
    "https://youtu.be/zp6pBNbUB2U", // queue
    "https://youtu.be/YAdLFsTG70w" // tree
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPage(),
                        settings: RouteSettings(
                          arguments: videoList[index],
                        ),
                      ));
                },
                child: Card(
                  shadowColor: Colors.orangeAccent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ListTile(
                    title: Text(
                      list[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.ondemand_video,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
