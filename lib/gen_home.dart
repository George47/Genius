import 'package:Genius/gen_body.dart';
import 'package:flutter/material.dart';
import 'package:Genius/pages/store_category_home.dart';
import 'package:Genius/gen_drawer.dart';

class GenHome extends StatefulWidget {
  @override
  _GenHomeState createState() => _GenHomeState();
}

class _GenHomeState extends State<GenHome> {

  final topBar = new AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    elevation: 1.0,
    // leading: new Icon(Icons.menu),
    title: Text("Genius"),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () { 
              print("NAVIGATE");
          },
        ),
      )
    ]

  );




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      drawer: new Drawer(
        child: GenDrawer(),
      ),
      body: new GenBody(),
    );
  }
}