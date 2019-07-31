import 'package:flutter/material.dart';
import 'package:Genius/pages/store_category_list.dart';

class StoreList extends StatelessWidget {

  final String listName;

  StoreList(this.listName);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(title: new Text(listName), backgroundColor: Colors.black,),
      body: new ListView(
        children: <Widget>[
          Container(
            height: deviceSize.height / 12,
            width: deviceSize.width,
            color: Colors.red,
            // child: new Center(
            //   child: new Text(
            //     "New",
            //     style: TextStyle(
            //       fontSize: 20,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            height: deviceSize.height,
            child: new StoreCategoryList(),
          )
        ],
      )
    );
      
      
    //   new Container(
    //     child: new StoreCategoryList(),
    //   ),
    // );
  }
}