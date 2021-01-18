import 'package:flutter/material.dart';

class BackLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            width: 420,
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSwwecgGCxGNGu6twlp_-30zp-6wYWdwIAv2w&usqp=CAU"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 5,),
          ListTile(
            title: Text("Assessment",style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.assessment,color: Colors.white,),
          ),
          Divider(color: Colors.white,),
          ListTile(
            title: Text("Settings",style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.settings,color: Colors.white,),
          ),
          Divider(color: Colors.white,),
          ListTile(
            title: Text("Dark Mode Disabled",style: TextStyle(color: Colors.white)),
            leading: Icon(Icons.brightness_high,color: Colors.white,),
          ),
          Divider(color: Colors.white,),
        ],
      ),
    );

  }
}
