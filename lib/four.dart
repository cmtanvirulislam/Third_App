import 'package:flutter/material.dart';

class Four extends StatefulWidget {
  String well;
  Four ({this.well});
  @override
  _FourState createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.well),
      ),
    );
  }
}
