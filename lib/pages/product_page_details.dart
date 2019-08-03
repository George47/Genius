import 'package:flutter/material.dart';

class ProductPageDetails extends StatelessWidget {
  final String productName;

  ProductPageDetails(this.productName);

  @override
  Widget build(BuildContext context) {
    // var deviceSize = MediaQuery.of(context).size;

    return Wrap(
      children: <Widget>[
        Hero(
          tag: productName,
          child: Image.asset(
                  "assets/images/tshirt1.jpg",
                  fit: BoxFit.cover,
                ),
        ),
        Padding(padding: const EdgeInsets.only(bottom: 15),),

        Container(
          child: Text(
            "This is a description for product" + productName,
          ),
        )
      ],
    );
  }
}