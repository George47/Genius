import 'package:flutter/material.dart';
import 'package:Genius/pages/store_category_home.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
            trailing: new Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Icon(
                Icons.thumb_up
              ),
            ),
          ),
          new ListTile(
            title: new Text("Sign In"),
            trailing: new Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Icon(
                Icons.account_circle
              ),
            ),
            onTap: () {
              checkUser();
            },
          ),
          new ListTile(
            title: new Text("Sign Out"),
            trailing: new Padding(
              padding: const EdgeInsets.only(right: 11),
              child: Icon(
                Icons.question_answer
              ),
            ),
            onTap: () {
              signOut();
            },
          ),

          new ListTile(
            title: new Text("Save this store"),
            trailing: new Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Checkbox(
              checkColor: Colors.black,
              value: false, 
              onChanged: null,
            ),
            ),
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

  void signOut() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.signOut();
    print("signed out");
  }

  void checkUser() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUser user = await _auth.currentUser();
    final uid = user.uid;
    print(uid);
  }
}