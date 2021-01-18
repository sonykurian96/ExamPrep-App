import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CodeEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children :[
              WebView(
              initialUrl: "https://www.programiz.com/c-programming/online-compiler/",
              javascriptMode: JavascriptMode.unrestricted,
            ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(8, 2, 0, 0),
                child: ListTile(
                  leading: Icon(Icons.code),
                  title: Text("\t\t\t\t\t\t\t\t\t\tOnline C Compiler"),
                ),
              ),
              Divider(
                color: Colors.black,
                height: 100,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(12, 62, 0, 0),
                child: Icon(Icons.note,color: Colors.white,),
              )
          ],
          ),
        )
    );
  }
}