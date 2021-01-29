import 'package:flutter/material.dart';
import "NotesPage.dart";

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  List<String> list = [
    'Arrays',
    'Linked list',
    'Stacks',
    'Queues',
    'Trees',
    'Heaps',
    'Graphs',
    'Hash Tables'
  ];

  List<String> videoList = [
    "https://www.thedshandbook.com/arrays/",
    "https://www.thedshandbook.com/linked-lists/",
    "https://www.thedshandbook.com/stacks/",
    "https://www.thedshandbook.com/queues/",
    "https://www.thedshandbook.com/trees/",
    "https://www.thedshandbook.com/heaps/",
    "https://www.thedshandbook.com/graphs/",
    "https://www.thedshandbook.com/hash-tables/"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                            builder: (context) => NotesPage(),
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
                          Icons.book,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )
    );
  }
}
