import 'package:flutter/material.dart';

class ProductPageDetails extends StatelessWidget {
  final product;

  ProductPageDetails(this.product);

  @override
  Widget build(BuildContext context) {
    // var deviceSize = MediaQuery.of(context).size;

    return Wrap(
      children: <Widget>[
        Hero(
          tag: product.name,
          child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
        ),
        Padding(padding: const EdgeInsets.only(bottom: 15),),

        Container(
          child: Text(
            "This is a description for product " + product.name,
          ),
        )
      ],
    );
  }
}