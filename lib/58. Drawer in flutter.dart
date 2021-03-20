import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Drawer"),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){
          _globalKey.currentState.openDrawer();
        }),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(onPressed: (){
          _globalKey.currentState.openDrawer();
        }),
      ),
    );
  }
}

