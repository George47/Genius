import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final String pageText;

  CartPage(this.pageText);

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