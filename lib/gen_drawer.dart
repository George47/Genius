import 'package:flutter/material.dart';
import 'pages/store_category_home.dart';

class GenDrawer extends StatefulWidget {
  @override
  _GenDrawerState createState() => _GenDrawerState();
}

class _GenDrawerState extends State<GenDrawer> {
  String drawerBackgroundImage = "assets/images/black.jpg";

  @override
  Widget build(BuildContext context) {
      return new ListView(
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
            title: new Text("Man"),
            trailing: new Icon(Icons.person),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (BuildContext context) => new StoreList("Man"))
              );
            },
          ),
          new ListTile(
            title: new Text("Settings"),
            trailing: new Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                new MaterialPageRoute(builder: (BuildContext context) => new StoreList("Settings"))
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
    );
  }
}