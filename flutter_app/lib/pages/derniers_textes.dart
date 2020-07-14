import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PageDerniersTextes extends StatefulWidget {
  @override
  _PageDerniersTextesState createState() => _PageDerniersTextesState();
}

class _PageDerniersTextesState extends State<PageDerniersTextes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Derniers textes",
            style: new TextStyle(
              fontSize: 15.0,
            )
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
            height: 680.0,
            child: WebView(
              initialUrl:Uri.dataFromString('  <a class="twitter-timeline" data-dnt="true" data-theme="dark" href="https://twitter.com/PJL_PPL_bot"></a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>', mimeType: 'text/html').toString(),
              javascriptMode: JavascriptMode.unrestricted,
            ))
      )
    );
  }
}
