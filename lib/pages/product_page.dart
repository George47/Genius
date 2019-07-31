import 'package:flutter/material.dart';
import 'package:Genius/pages/product_page_details.dart';
import 'package:Genius/pages/add_to_cart_bottom.dart';

class ProductPage extends StatelessWidget {

  final String pageText;

  ProductPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(pageText), backgroundColor: Colors.black,),
      body: new Center(
        // child: new Text(pageText),
        child: ProductPageDetails(pageText),
      ),
      floatingActionButton: FloatingButton(),

      // persistentFooterButtons: <Widget>[
      //   new IconButton(
      //     icon: new Icon(Icons.favorite_border),
      //     onPressed: null,
      //   ),
      //   new FlatButton(
      //     child: new Icon(Icons.add_shopping_cart),
      //     onPressed: null,
      //   ),
      // ], 
    );
  }
}

class FloatingButton extends StatefulWidget {
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
      
      onPressed: () {
        var sheetController = showBottomSheet(
          context: context,
          builder: (context) => Container(
            child: AddToCartBottom(),
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