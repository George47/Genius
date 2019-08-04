import 'package:flutter/material.dart';

class GenList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.red,
                child: Center(
                  child: new Text(
                    "Store",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: new Image.asset(
                  "assets/images/image1.jpg",
                  fit: BoxFit.cover,
                ), 
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 2,
                child: new Image.asset(
                  "assets/images/image2.jpg",
                  fit: BoxFit.cover,
                ), 
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
              ),

              Container(
                height: 500,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int e) {
                    return new Text("text");
                  },
                ),
              ),
            ],
          ),
    );
  }
}