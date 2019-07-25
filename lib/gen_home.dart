import 'package:first_app/gen_body.dart';
import 'package:flutter/material.dart';

class GenHome extends StatefulWidget {
  @override
  _GenHomeState createState() => _GenHomeState();
}

class _GenHomeState extends State<GenHome> {

  final topBar = new AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.menu),
    title: Text("Genius"),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(Icons.account_circle),
      )
    ]

  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new GenBody(),
    );
  }
}