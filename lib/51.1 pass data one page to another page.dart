import 'package:flutter/material.dart';
import 'package:third_app/four.dart';

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
  var name = "Islam";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          // ignore: deprecated_member_use
          child: RaisedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Four(well: name,)));
          }),
        ),
      ),
    );
  }
}
