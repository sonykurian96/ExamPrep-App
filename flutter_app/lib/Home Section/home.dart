import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
                child: Text("Last Moment Prep",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Divider(thickness: 1),
            ],
          )
        )
    );
  }
}
