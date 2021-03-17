import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:third_app/home.dart';

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
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "First",
            body: "This is my First Description",
            image: Image.asset(
              "pictures/bird.jpg",
              width: 350,
            )),
        PageViewModel(
            title: "Second",
            body: "This is my Second Description",
            image: Image.asset(
              "pictures/food.jpg",
              width: 350,
            )),
        PageViewModel(
            title: "Third",
            body: "This is my Third Description",
            image: Image.asset(
              "pictures/sadbird.jpg",
              width: 350,
            ))
      ],
      onDone: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => Home1()));
      },
      done: Text("Done"),
      showSkipButton: true,
      skip: Text("Skip"),
      dotsDecorator: DotsDecorator(
        size: Size(10.0,10.0),
        color: Colors.red,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
