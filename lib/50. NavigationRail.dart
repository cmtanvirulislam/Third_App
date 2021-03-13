import 'package:flutter/material.dart';
import 'package:third_app/49.%20DataTable%20widget%20in%20flutter.dart';
import 'package:third_app/one.dart';
import 'package:third_app/two.dart';

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
  var _selectedIndex = 0;
  final pages = [
    One(),
    Two()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              backgroundColor: Colors.black,
              labelType: NavigationRailLabelType.all,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.wifi,
                    color: Colors.blue,
                  ),
                  label: Text("WIFI"),
                  selectedIcon: Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.wb_cloudy,
                    color: Colors.blue,
                  ),
                  label: Text("CLOUD"),
                  selectedIcon: Icon(
                    Icons.wb_cloudy,
                    color: Colors.white,
                  ),
                )
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: (val) {
                setState(() {
                  _selectedIndex=val;
                });
              },
            ),
            Expanded(child: Container(
              child: pages [_selectedIndex],
            ))
          ],
        ),
      ),
    );
  }
}
