import 'package:flutter/material.dart';
import 'package:Genius/models/product_size.dart';

class AddToCartBottom extends StatefulWidget {
  // @override
  _AddToCartBottomState createState() => _AddToCartBottomState();
  
}

class _AddToCartBottomState extends State<AddToCartBottom> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
      height: 160,//160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 115,//125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow()
              ]
            ),
            child: Column(
              children: <Widget>[
                // DecoratedTextField(),
                // BottomSheetText(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 5,),
                      child: Text("item1", style: TextStyle(fontSize: 18,),),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20, top: 20, bottom: 5,),
                      child: Text("\$12.99", style: TextStyle(fontSize: 18,),),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizeSelectBox(),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 20),
                      // child: SheetButton(),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.favorite_border),
                          Padding(padding: const EdgeInsets.only(right: 15,),),
                          Icon(Icons.add_shopping_cart),
                        ],
                      ),
                    ),
                  ],
                ),
                
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

// class Size {
//   const Size(this.size);
//   final String size;
// }

class SizeSelectBox extends StatefulWidget {
  @override
  _SizeSelectBoxState createState() => _SizeSelectBoxState();
}

class _SizeSelectBoxState extends State<SizeSelectBox> {
  Size selectedSize;
  List<Size> sizes = <Size>[const Size('S'), const Size('M'), const Size('L'), const Size('XL')];

  @override
  Widget build(BuildContext context) {
    return new DropdownButton<Size>(
      hint: Text("Select Size"),
      value: selectedSize,
      items: sizes.map((Size size) {
        return new DropdownMenuItem<Size>(
          value: size,
          child: new Text(
            size.size,
            style: new TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      onChanged: (Size newValue) {
        setState(() {
          selectedSize = newValue;
        });
      },
    );
  }
}

// class SizeSelectBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new DropdownButton<String>(
//       hint: Text("Select Size"),
//       items: <String>['S', 'M', 'L'].map((String value) {
//         return new DropdownMenuItem<String>(
//           value: value,
//           child: new Text(value),
//         );
//       }).toList(),
//       onChanged: (size) {
//         print("selected " + size);
//       },
//     );
//   }
// }


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

class BottomSheetText extends StatefulWidget {
  @override
  _BottomSheetTextState createState() => _BottomSheetTextState();
}

class _BottomSheetTextState extends State<BottomSheetText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Item1"),
    );
  }
}

class BottomSheetIcons extends StatefulWidget {
  @override
  _BottomSheetIconsState createState() => _BottomSheetIconsState();
}

class _BottomSheetIconsState extends State<BottomSheetIcons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}