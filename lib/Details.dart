import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  var receivedata;
  DetailsPage({this.receivedata});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: CircleAvatar(
        radius: 100,
        child: Image.network(receivedata["avatar"]),
      ),
      ),
    );
  }
}
