import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/AnimatedFoldableContainer.dart';
import 'dart:async';

class PageDirectAN extends StatefulWidget {
  @override
  _PageDirectANState createState() => _PageDirectANState();
}

class _PageDirectANState extends State<PageDirectAN> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Direct Sénat",
              style: new TextStyle(
                fontSize: 15.0,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[FoldableListWidget()],
          ),
        ));
  }
}

// Flutter code sample for ExpansionPanelList
// Here is a simple example of how to implement ExpansionPanelList.
// stores ExpansionPanel state information
class Item {
  Item({
    this.expandedValue,
    this.headerValue,
    this.isExpanded = false,
  });

  Widget expandedValue;
  String headerValue;
  bool isExpanded;
}

class FoldableListWidget extends StatefulWidget {
  FoldableListWidget({Key key}) : super(key: key);

  @override
  _FoldableListWidgetState createState() => _FoldableListWidgetState();
}

class _FoldableListWidgetState extends State<FoldableListWidget> {

  List<Item> _data = [
    Item(
        headerValue: "Direct Sénat",
        expandedValue:Container(
          height:400,
          child:CssTargetedWebviewSenat(),

          /*WebView(
            initialUrl:"https://videos.senat.fr/video.1607759_5eb6a55f6f7f6.seance-publique-du-9-mai-2020-apres-midi",
            //initialUrl:"https://videos.assemblee-nationale.fr/video.9032513_5eb6d285382a1.1ere-seance--prorogation-de-l-etat-d-urgence-sanitaire-cmp-9-mai-2020",
            javascriptMode: JavascriptMode.unrestricted,
              /*onWebViewCreated: (controller) {
                _myController = controller;
              },
              onPageFinished: (initialUrl) {
                _myController.evaluateJavascript("document.getElementsByClassName('player_template')[0].style.display='none';");
              }*/
          ),*/
        ),
        isExpanded: true),
    Item(
        headerValue: "eLiasse",
        expandedValue: Container(
            height: 400,
            child: WebView(
              //initialUrl: "https://eliasse.assemblee-nationale.fr/eliasse/",
              initialUrl:"https://www.senat.fr/enseance/2019-2020/417/Amdt_52.html",
              javascriptMode: JavascriptMode.unrestricted,
            ))),
    Item(
        headerValue: "#directSenat",
        expandedValue: Container(
            height: 400.0,
            child: WebView(
              initialUrl: "https://twitter.com/search?q=%23directSenat&f=live",
              // avec un username derriere twitter.com/xxxx, ça fonctionne, mais ne fonctionne pas pour hashtags parce que twitter ne permet pas d'embed des "timelines" de hashtag.
              //initialUrl:Uri.dataFromString('  <a class="twitter-timeline" data-dnt="true" data-theme="dark" href="https://twitter.com/search?q=%23directAN&f=live">Tweets by malopedia</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>', mimeType: 'text/html').toString(),
              javascriptMode: JavascriptMode.unrestricted,
            ))),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: item.expandedValue,
              subtitle: Text(''),
              trailing: Text(''),
              onTap: () {
                setState(() {
                  //_data.removeWhere((currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}


class CssTargetedWebviewSenat extends StatefulWidget {
  CssTargetedWebviewSenat({Key key}) : super(key: key);

  @override
  _CssTargetedWebviewSenatState createState() => _CssTargetedWebviewSenatState();
}

class _CssTargetedWebviewSenatState extends State<CssTargetedWebviewSenat> {

  WebViewController _myController;
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return WebView(
          initialUrl: 'https://videos.senat.fr/video.1607759_5eb6a55f6f7f6.seance-publique-du-9-mai-2020-apres-midi',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            _myController = controller;
          },
          onPageFinished: (initialUrl) async {
            //_myController.evaluateJavascript("document.getElementsByClassName('player_template')[0].style.display='none';");
            print("1");
            await Future.delayed(const Duration(seconds: 3), (){});
            print("2");
            _myController.evaluateJavascript('document.querySelector(".navbar-wrapper").style.display="none";');
            _myController.evaluateJavascript('document.querySelector(".global-container").style.marginTop="0px";');
            print("3");
            _myController.evaluateJavascript('document.querySelector(".skin_zone_1").style.display="none";');
            _myController.evaluateJavascript('document.querySelector(".skin_zone_2").style.display="none";');
            _myController.evaluateJavascript('document.querySelector(".skin_zone_3").style.display="none";');
            print("4");
            //_myController.evaluateJavascript('const divContainer = document.querySelector(".player_template").parentNode; document.body.innerHTML = ""; document.body.appendChild(divContainer);');
           // _myController.evaluateJavascript('javascript:document.body.style.paddingTop = "0"; const divContainer = document.querySelector(".player_template").parentNode; document.body.innerHTML = ""; document.body.appendChild(divContainer);');

            },
    );
  }
}