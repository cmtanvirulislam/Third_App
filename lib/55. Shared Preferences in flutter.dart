import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int counter=0;
  loadcounter()async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    setState(() {
      counter=pref.getInt("counter")??0;
    });
  }
  increment() async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
  }
  @override
  void initState() {
    loadcounter();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have clicked $counter times',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
