import 'package:flutter/material.dart';

class ProductPageDetails extends StatelessWidget {
  final String productName;

  ProductPageDetails(this.productName);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return Wrap(
      children: <Widget>[
        Container(
          height: deviceSize.height/1.5,
          child: Image.asset("assets/images/tshirt1.jpg"),
        ),
        Padding(padding: const EdgeInsets.only(bottom: 15),),

        Container(
          child: Text(
            "This is a description for product",
          ),
        )
      ],
    );
  }
}