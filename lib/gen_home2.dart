import 'package:flutter/material.dart';
import 'package:Genius/gen_store.dart';

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
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                SizedBox(
                  width: 120,
                  height: 120,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 90,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
            Text('TEST2'),
            IconButton(icon: new Icon(Icons.pages),
              onPressed: () { 
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (BuildContext context) => new GenStore())
                  );
              },
            )
          ],
        ),
      )
    );
  }
}