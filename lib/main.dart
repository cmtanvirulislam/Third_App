import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
  Home ({Key key}) : super (key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data;
  Future getData() async{
    var response = await http.get("https://reqres.in/api/users?page=2");
    setState(() {
      var decode = json.decode(response.body);
      data = decode["data"];
      print(data);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data==Null?0:data.length,
          itemBuilder: (context.index){
      return ListTile(
      title: Text(data[index]["first_name"]),
      subtitle: Text(data[index]["email"]),,
      );
      }
      ),
    );
  }
}
