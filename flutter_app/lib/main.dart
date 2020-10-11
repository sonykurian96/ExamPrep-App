import 'package:flutter/material.dart';
import 'package:flutter_app/pages/page1.dart';
import 'package:flutter_app/pages/page2.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_app/pages/page3.dart';
import 'package:flutter_app/pages/page4.dart';

void main() => runApp(MaterialApp(
  home: MainPage(),
));

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyRoute(
      iconData: Icons.home,
      page: Page1(),
    ),
    MyRoute(
      iconData: Icons.category,
      page: Page2(),
    ),
    MyRoute(
      iconData: Icons.library_books,
      page: Page3(),
    ),
    MyRoute(
      iconData: Icons.video_library,
      page: Page4(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        title: Text('EduTube'),
        centerTitle: true,
      ),
      body: pages[_pageIndex].page,

      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          color: Colors.orange[800],
          buttonBackgroundColor: Colors.orange[800],
          backgroundColor: Colors.white,
          height: 65,
          items: pages.map((p) => Icon(
            p.iconData,
            size: 30,
            color: Colors.amberAccent,
          )).toList(),

          animationDuration: Duration(milliseconds: 250) ,
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          }
      ),
    );
  }
}

class MyRoute {
  final IconData iconData;
  final Widget page;

  MyRoute({this.iconData, this.page});
}



