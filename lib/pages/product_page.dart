import 'package:flutter/material.dart';
import 'product_page_details.dart';

class ProductPage extends StatelessWidget {

  final String pageText;

  ProductPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(pageText), backgroundColor: Colors.black,),
      body: new Center(
        // child: new Text(pageText),
        child: ProductPageDetails(pageText),
      )
    );
  }
}