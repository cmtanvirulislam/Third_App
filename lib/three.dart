import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  String good;
  Three({this.good});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(good,style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
