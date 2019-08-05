import 'package:Genius/gen_body.dart';
import 'package:Genius/login/login.dart';
import 'package:flutter/material.dart';
import 'package:Genius/gen_drawer.dart';

class GenHome extends StatefulWidget {
  @override
  _GenHomeState createState() => _GenHomeState();
}

class _GenHomeState extends State<GenHome> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar(),
      drawer: new Drawer(
        child: GenDrawer(),
      ),
      body: new GenBody(),
    );
  }

  Widget topBar() {
    return new AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    elevation: 1.0,
    title: Text("Genius"),
    actions: <Widget>[
      IconButton(
        icon: new Icon(Icons.search),
        onPressed: () { 
            Navigator.of(context).push(
              new MaterialPageRoute(builder: (BuildContext context) => new LoginPage())
            );
        },
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: new IconButton(
          icon: new Icon(Icons.shopping_cart),
          onPressed: () { 
              print("CART PAGEs");
          },
        ),
      ),
    ],
  );
  }
}