import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset("assets/under_construction(image).jpg"),
              SizedBox(height: 20,),
              Text("Under Construction",
                style: TextStyle(
                  fontSize: 20,
                ),)
            ],
          )
        )
    );
  }
}