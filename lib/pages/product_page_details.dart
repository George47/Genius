import 'package:flutter/material.dart';

class ProductPageDetails extends StatelessWidget {
  final String productName;

  ProductPageDetails(this.productName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(productName),
    );
  }
}