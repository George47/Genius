import 'package:flutter/material.dart';

class AddToCartBottom extends StatefulWidget {
  @override
  _AddToCartBottomState createState() => _AddToCartBottomState();
}

class _AddToCartBottomState extends State<AddToCartBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow()
              ]
            ),
            child: Column(
              children: <Widget>[
                DecoratedTextField(),
                SheetButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DecoratedTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration.collapsed(hintText: "Test"),
      ),
    );
  }
}

class SheetButton extends StatefulWidget {
  @override
  _SheetButtonState createState() => _SheetButtonState();
}

class _SheetButtonState extends State<SheetButton> {
  bool checkInput = false;
  bool success = false;

  @override
  Widget build(BuildContext context) {
    return !checkInput
    ? MaterialButton(
      color: Colors.grey[800],
      onPressed: () async {
        setState(() {
          checkInput = true;
        });

        await Future.delayed(Duration(seconds: 1));

        setState(() {
          success = true;
        });

        await Future.delayed(Duration(milliseconds: 500));

        Navigator.pop(context);
      },
      child: Text("Add To Cart", style: TextStyle(color: Colors.white,),),
    )
    : !success
    ? CircularProgressIndicator()
    : Icon(Icons.check, color: Colors.green,);
  }
}