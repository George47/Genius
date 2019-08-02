import 'package:flutter/material.dart';

class ProductPageDetails extends StatelessWidget {
  final String productName;

  ProductPageDetails(this.productName);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Container(
          child: Image.asset("assets/images/tshirt1.jpg"),
        ),
        Text(
          "This is a description for product",
        )
      ],
    );
  }
}