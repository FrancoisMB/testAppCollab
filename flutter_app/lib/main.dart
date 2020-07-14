import 'package:flutter/material.dart';
import 'package:flutterappandroid/pages/changements_collabs.dart';
import 'package:flutterappandroid/pages/derniers_textes.dart';
import 'package:flutterappandroid/pages/direct_AN.dart';
import 'package:flutterappandroid/pages/direct_Senat.dart';
import 'package:flutterappandroid/pages/home.dart';
import 'package:flutterappandroid/pages/dernieres_activites.dart';
import 'package:flutterappandroid/pages/loading.dart';
import 'package:flutterappandroid/pages/dummy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => Loading(),
        "/home": (context) => Home(title: "Rends l'appgent"),
        "/dummy": (context) => PageDummy(),
        "/dernieres_activites": (context) => PageDernieresActivites(),
        "/derniers_textes": (context) => PageDerniersTextes(),
        "/direct_an": (context) => PageDirectAN(),
        "/direct_Senat": (context) => PageDirectSenat(),
        "/changements_collabs": (context) => PageChangementsCollabs(),

      },
    );
  }
}

