import 'package:flutter/material.dart';

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
    return ListView(
      children: <Widget>[
        Container(
          // decoration: new BoxDecoration(boxShadow: [
      //   new BoxShadow(
      //     color: Colors.grey,
      //     blurRadius: 3.0,
      //     offset: Offset(3, 3)
      //   ),
      // ]),
      child: Card(
        child: Hero(
          tag: productName,

          child: Material(
            child: InkWell(
              onTap: (){print("Clicked " + productName + ", priced " + productPrice);},
              child: GridTile(
                child: Image.asset(
                  productImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          
        ),
      ),
        ),

        Text(
          productName
        )
      ],


      // return Card(
      //   child: Hero(
      //     tag: productName,

      //     child: Material(
      //       child: InkWell(
      //         onTap: (){print("Clicked " + productName + ", priced " + productPrice);},
      //         child: GridTile(
      //           // footer: Container(
      //           //   color: Colors.white70,
      //           //   child: ListTile(
      //           //     leading: Text(
      //           //       productName,
      //           //       style: TextStyle(
      //           //         fontWeight: FontWeight.bold,
      //           //       ),
      //           //     ),
      //           //     title: Text("\$$productPrice"),
      //           //   ),
      //           // ),
      //           child: Image.asset(
      //             productImage,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //     ),
          
      //   ),
      // ),
      




    );
  }
}