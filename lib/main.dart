import 'package:flutter/material.dart';
import 'package:Genius/gen_store.dart';
import 'package:Genius/gen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Genius',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(color: Colors.white),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white)),
        textTheme: TextTheme(title: TextStyle(color: Colors.white)),
      ),
      home: new GenHome(),
    );
  }
}