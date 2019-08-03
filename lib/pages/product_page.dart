import 'package:flutter/material.dart';
import 'package:Genius/pages/product_page_details.dart';
import 'package:Genius/pages/add_to_cart_bottom.dart';

class ProductPage extends StatelessWidget {
  final product;
  
  ProductPage(this.product);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(product.name), backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: new Center(
          child: ProductPageDetails(product),
        ),
      ),
      floatingActionButton: FloatingButton(product),
    );
  }
}

class FloatingButton extends StatefulWidget {
  final product;
  FloatingButton(this.product);

  @override
  _FloatingButtonState createState() => _FloatingButtonState();

}

class _FloatingButtonState extends State<FloatingButton> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return _show
    ? FloatingActionButton(
      backgroundColor: Colors.black,
      child: Icon(Icons.shopping_basket),
      
      onPressed: () {
        var sheetController = showBottomSheet(
          context: context,
          builder: (context) => Container(
            child: AddToCartBottom(widget.product),
          ),
        );
        _showButton(false);

        sheetController.closed.then((value){
          _showButton(true);
        });
      },
    ) : Container();
  }

  void _showButton(bool value)
  {
    setState(() {
      _show = value;
    });
  }
}