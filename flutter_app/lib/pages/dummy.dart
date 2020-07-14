import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageDummy extends StatefulWidget {
  @override
  _PageDummyState createState() => _PageDummyState();
}

class _PageDummyState extends State<PageDummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "DummyPage",
            style: new TextStyle(
              fontSize: 15.0,
            )
        ),
      ),
      body:WebView(initialUrl: "https://www.wikipedia.com",)
      //Text("page dummy en attendant qu'il y ait un truc")
    );
  }
}
