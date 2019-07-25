import 'package:first_app/gen_body.dart';
import 'package:flutter/material.dart';
import 'pages/test_page.dart';

class GenHome extends StatefulWidget {
  @override
  _GenHomeState createState() => _GenHomeState();
}

class _GenHomeState extends State<GenHome> {

  final topBar = new AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    elevation: 1.0,
    // leading: new Icon(Icons.menu),
    title: Text("Genius"),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () { 
              print("NAVIGATE");
          },
        ),
      )
    ]

  );

  String drawerBackgroundImage = "assets/images/black.jpg";



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Genius",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: new Text(
                "george.siqi.wang@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage(drawerBackgroundImage),
                )
              ),
            ),
            // Padding(padding: const EdgeInsets.all(10.0),),
            // new ListTile(
            //   title: new Text(
            //     "Genius",
            //     style: TextStyle(
            //       fontSize: 30,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            new ListTile(
              title: new Text("Shop"),
              trailing: new Icon(Icons.shopping_basket),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new TestPage("Shop"))
                );
              },
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(builder: (BuildContext context) => new TestPage("Settings"))
                );
              },
            ),
            new Divider(),

            new ListTile(
              title: new Text("Genius"),
              trailing: new Icon(Icons.thumb_up),
            ),

            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new GenBody(),
    );
  }
}