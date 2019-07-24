import 'package:flutter/material.dart';

class GenList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Column(),
    );
  }
}