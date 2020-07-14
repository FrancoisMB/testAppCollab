import 'package:flutter/material.dart';


class PageDernieresActivites extends StatefulWidget {
  @override
  _PageDernieresActivitesState createState() => _PageDernieresActivitesState();
}

class _PageDernieresActivitesState extends State<PageDernieresActivites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Dernières activités des chambres",
            style: new TextStyle(
              fontSize: 15.0,
            )
        ),
      ),
      body:Text("page dernieres activités")
    );
  }
}
