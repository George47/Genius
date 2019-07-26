import 'package:flutter/material.dart';
import './store_category_list.dart';

class StoreList extends StatelessWidget {

  final String listName;

  StoreList(this.listName);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(title: new Text(listName), backgroundColor: Colors.black,),
      body: new Container(
        child: new StoreCategoryList(),
      )
    );
  }
}