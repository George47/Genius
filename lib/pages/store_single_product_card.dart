import 'package:flutter/material.dart';
import 'package:Genius/pages/product_page.dart';
import 'package:Genius/models/product.dart';

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
      Product product = Product(productName, productImage, productPrice);

      return Card(
        child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => 
                      new ProductPage(product))
                );
              },
              child: GridTile(
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