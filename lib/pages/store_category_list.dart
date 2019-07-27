import 'package:flutter/material.dart';
import 'store_single_product_card.dart';

class StoreCategoryList extends StatefulWidget {
  @override
  _StoreCategoryListState createState() => _StoreCategoryListState();
}

class _StoreCategoryListState extends State<StoreCategoryList> {

  // json product list to be fetched
  var productList = [
    {
      "name": "item1",
      "price": "12.99",
      "image": "assets/images/image2.jpg"
    },
    {
      "name": "item2",
      "price": "6.99",
      "image": "assets/images/image2.jpg"
    },
    {
      "name": "item3",
      "price": "7.99",
      "image": "assets/images/image2.jpg"
    },
    {
      "name": "item4",
      "price": "57.99",
      "image": "assets/images/image2.jpg"
    },
    {
      "name": "item5",
      "price": "127.99",
      "image": "assets/images/image2.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: (1/1.2)), 
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: deviceSize.height,
          padding: const EdgeInsets.fromLTRB(3.0, 20.0, 0, 10.0),
          child: SingleProduct(
            productName: productList[index]["name"],
            productImage: productList[index]["image"],
            productPrice: productList[index]["price"]
          )
        );
      }
      
    );
  }
}