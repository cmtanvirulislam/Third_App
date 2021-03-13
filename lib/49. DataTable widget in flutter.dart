import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table"),
      ),
      body: Center(
        child: DataTable(
          columns: [
            DataColumn(label: Text("Name"),),
            DataColumn(label: Text("Age"),),
            DataColumn(label: Text("Role"),)
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text("Tanvir"),),
              DataCell(Text("30"),),
              DataCell(Text("Engineer"),),
            ]),
            DataRow(cells: [
              DataCell(Text("Sara"),),
              DataCell(Text("28"),),
              DataCell(Text("Housewife"),),
            ]),
            DataRow(cells: [
              DataCell(Text("Sadia"),),
              DataCell(Text("35"),),
              DataCell(Text("Manager"),),
            ]),
          ],
        ),
      ),
    );
  }
}
