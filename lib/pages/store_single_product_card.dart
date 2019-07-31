import 'package:flutter/material.dart';
import 'package:Genius/pages/product_page.dart';

class SingleProduct extends StatelessWidget {
  final productName;
  final productImage;
  final productPrice;

  SingleProduct({
    this.productName,
    this.productImage,
    this.productPrice
  });

  @override
  Widget build(BuildContext context) {
      return Card(
        child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new ProductPage(productName))
                );
              },
              child: GridTile(
                // footer: Container(
                //   color: Colors.white70,
                //   child: ListTile(
                //     leading: Text(
                //       productName,
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     title: Text("\$$productPrice"),
                //   ),
                // ),
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          
        ),
      );
  }
}