import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PageChangementsCollabs extends StatefulWidget {
  @override
  _PageChangementsCollabsState createState() => _PageChangementsCollabsState();
}

class _PageChangementsCollabsState extends State<PageChangementsCollabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Dernièrs textes",
            style: new TextStyle(
              fontSize: 15.0,
            )
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
            height: 680.0,
            child: WebView(
              initialUrl:Uri.dataFromString('  <a class="twitter-timeline" data-dnt="true" data-theme="dark" href="https://twitter.com/collab_bot"></a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>', mimeType: 'text/html').toString(),
              javascriptMode: JavascriptMode.unrestricted,
            ))
      )
    );
  }
}
