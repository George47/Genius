import 'package:flutter/material.dart';
import 'package:Genius/gen_home.dart';

class GenHome2 extends StatefulWidget {
  @override
  _GenHome2State createState() => _GenHome2State();
}

class _GenHome2State extends State<GenHome2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Test'), backgroundColor: Colors.black,),
      body: new Center(
        child: new Column(
          children: <Widget>[
            Text('TEST2'),
            IconButton(icon: new Icon(Icons.pages),
              onPressed: () { 
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (BuildContext context) => new GenHome())
                  );
              },
            )
          ],
        ),
      )
    );
  }
}