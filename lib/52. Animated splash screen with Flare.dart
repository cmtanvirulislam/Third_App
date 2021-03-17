import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          value=!value;
        });
      }),
      body: Container(
        child: FlareActor(
          "animation/Resizing House.flr",
          alignment: Alignment.center,
          fit: BoxFit.cover,
          animation: value==false?"Demo Mode":"Sun Rotate",
        ),
      ),
    );
  }
}
