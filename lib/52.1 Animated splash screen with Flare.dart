import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_app/homepage.dart';

void main() {
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
  @override
  void initState() {
    Timer(Duration (seconds: 10) , (){
      Navigator.push(context, CupertinoPageRoute(builder: (context) => HomePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FlareActor(
          "animation/Resizing House.flr",
          alignment: Alignment.center,
          fit: BoxFit.cover,
          animation: "Demo Mode",
        ),
      ),
    );
  }
}
