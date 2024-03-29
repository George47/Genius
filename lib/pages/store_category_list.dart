import 'package:flutter/material.dart';
import 'package:Genius/pages/store_single_product_card.dart';

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
      "image": "assets/images/tshirt1.jpg"
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
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, childAspectRatio: (1/1.7),
      ), 
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Container(
              height: deviceSize.height/3,
              // padding: const EdgeInsets.fromLTRB(3.0, 20.0, 0, 10.0),
              child: SingleProduct(
                productName: productList[index]["name"],
                productImage: productList[index]["image"],
                productPrice: productList[index]["price"]
              ),
            ),
            Padding(padding: const EdgeInsets.all(5.0),),
            Container(
              child: Text(
                productList[index]["name"],
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            )
          ],
        );
      },
    );
  }
}