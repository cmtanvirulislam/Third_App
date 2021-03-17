import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future getimagefromfirebase() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("Images").getDocuments();
    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getimagefromfirebase(),
        builder: (_, snapshot) {
          return CarouselSlider.builder(
            slideBuilder: (index) {
              DocumentSnapshot sliderimage = snapshot.data[index];
              return Container(
                child: Image.network(sliderimage['img']),
              );
            },
            slideTransform: CubeTransform(
              rotationAngle: 0,
            ),
            slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: Colors.red,
              currentIndicatorColor: Colors.black,
            ),
            itemCount: snapshot.data.length,
          );
        },
      ),
    );
  }
}
