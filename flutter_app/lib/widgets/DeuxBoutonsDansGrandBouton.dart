import 'package:flutter/material.dart';

class DeuxBoutonsDansGrandBouton extends StatelessWidget {

  final Widget contentBigger;
//  final Widget contentSmaller1;
//  final Widget contentSmaller2;
  final Function functionBigger;
  final Function functionSmaller1;
  final Function functionSmaller2;

  DeuxBoutonsDansGrandBouton(
      {
        this.contentBigger,
//        this.contentSmaller1,
//        this.contentSmaller2,
        this.functionBigger,
        this.functionSmaller1,
        this.functionSmaller2,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: functionBigger,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 2, child: contentBigger),
                Expanded(
                  flex: 1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: functionSmaller1,
                          icon: Icon(Icons.account_balance),
                          color: Colors.redAccent,
                        ),
                        IconButton(
                          onPressed: functionSmaller2,
                          icon: Icon(Icons.account_balance),
                          color: Colors.blue,
                        ),
                        //      RaisedButton(onPressed: () {}, child: contentSmaller1),
                      ]),
                )
              ])),
    );
  }
}
