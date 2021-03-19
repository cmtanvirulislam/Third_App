import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_app/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return "Enter your name";
              }
              return null;
            },
          ),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return "Enter your age";
              }
              return null;
            },
          ),
          TextFormField(
            validator: (value){
              if (value.isEmpty){
                return "Enter your phone";
              }
              return null;
            },
          ),
          // ignore: deprecated_member_use
          RaisedButton(onPressed: (){
            if(_formkey.currentState.validate()) {
              return Navigator.push(context, CupertinoPageRoute(builder: (context) => Home1()));
            }
          })
        ],
      ),
    );
  }
}


