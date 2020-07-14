import 'package:flutter/material.dart';
import '../widgets/DeuxBoutonsDansGrandBouton.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DeuxBoutonsDansGrandBouton(
                    contentBigger: Text("Dernières activités"),
                    //contentSmaller1: Text("AN"),
                    //contentSmaller2: Text("S"),
                    functionBigger: () =>
                        Navigator.pushNamed(context, '/dernieres_activites'),
                    functionSmaller1: () =>
                        Navigator.pushNamed(context, '/dummy'),
                    functionSmaller2: () =>
                        Navigator.pushNamed(context, '/dummy')),
                SizedBox(height: 10.0),
                DeuxBoutonsDansGrandBouton(
                    contentBigger: Text("Derniers textes déposés"),
                    //contentSmaller1: Text("AN"),
                    //contentSmaller2: Text("S"),
                    functionBigger: () =>
                        Navigator.pushNamed(context, '/derniers_textes'),
                    functionSmaller1: () =>
                        Navigator.pushNamed(context, '/dummy'),
                    functionSmaller2: () =>
                        Navigator.pushNamed(context, '/dummy')),
                SizedBox(height: 10.0),
                DeuxBoutonsDansGrandBouton(
                    contentBigger: Text("Les directs"),
                    //contentSmaller1: Text("AN"),
                    //contentSmaller2: Text("S"),
                    functionBigger: _incrementCounter,
                    functionSmaller1: () =>
                        Navigator.pushNamed(context, '/direct_an'),
                    functionSmaller2: () =>
                        Navigator.pushNamed(context, '/direct_Senat')),
                SizedBox(height: 10.0),
                DeuxBoutonsDansGrandBouton(
                    contentBigger: Text("Le mercato des AP"),
                    //contentSmaller1: Text("AN"),
                    //contentSmaller2: Text("S"),
                    functionBigger: () =>
                        Navigator.pushNamed(context, '/changements_collabs'),
                    functionSmaller1: () =>
                        Navigator.pushNamed(context, '/dummy'),
                    functionSmaller2: () =>
                        Navigator.pushNamed(context, '/dummy')),
                SizedBox(height: 10.0),
                DeuxBoutonsDansGrandBouton(
                    contentBigger: Text("Le calendrier"),
                    //contentSmaller1: Text("AN"),
                    //contentSmaller2: Text("S"),
                    functionBigger: _incrementCounter,
                    functionSmaller1: () =>
                        Navigator.pushNamed(context, '/dummy'),
                    functionSmaller2: () =>
                        Navigator.pushNamed(context, '/dummy')),
                SizedBox(height: 5.0),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Les décisions du Conseil constitutionnel"),
                ),
                SizedBox(height: 0),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Les textes"),
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Settings"),
                ),
                SizedBox(height: 0.0),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Donner de la grosse moula"),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('$_counter')))
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
