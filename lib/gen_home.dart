import 'package:flutter/material.dart';
import 'package:Genius/gen_store.dart';

class GenHome extends StatefulWidget {
  @override
  _GenHomeState createState() => _GenHomeState();
}

class _GenHomeState extends State<GenHome> {  
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(title: new Text('Genius'), backgroundColor: Colors.black,),
      body: new Center(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                SizedBox(
                  width: deviceSize.width - 30,
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
            Padding(
              padding: const EdgeInsets.only(top: 30)
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                SizedBox(
                  width: deviceSize.width - 30,
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