import 'package:Genius/gen_body.dart';
import 'package:Genius/login/login.dart';
import 'package:flutter/material.dart';
import 'package:Genius/gen_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Genius/pages/cart_page.dart';
import 'package:Genius/pages/test_page.dart';

class GenStore extends StatefulWidget {
  @override
  _GenHomeState createState() => _GenHomeState();
}

class _GenHomeState extends State<GenStore> {

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
            redirectLogin(context);
            // var loggedIn = checkLogin();
            // print(loggedIn);
            // if (loggedIn != null) {
            //   print('logged in');
            // } else {
            //   print('not logged in');
            // }
            // Navigator.of(context).push(
            //   new MaterialPageRoute(builder: (BuildContext context) => new LoginPage())
            // );
        },
      ),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: new IconButton(
          icon: new Icon(Icons.shopping_cart),
          onPressed: () { 
            Navigator.of(context).push(
              new MaterialPageRoute(builder: (BuildContext context) => new CartPage('Cart Page'))
            );
          },
        ),
      ),
    ],
  );
  }

  checkLogin() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUser user = await _auth.currentUser();
    print(user ?? false);
    return user ?? false;
  }

  redirectLogin(context) {
    print(context);
  }
}