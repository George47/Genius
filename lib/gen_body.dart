import 'package:Genius/gen_list.dart';
import 'package:flutter/material.dart';

class GenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(child: GenList()),
        ],
    );
  }
}