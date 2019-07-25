import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {

  final String pageText;

  TestPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(pageText), backgroundColor: Colors.black,),
      body: new Center(
        child: new Text(pageText),
      )
    );
  }
}