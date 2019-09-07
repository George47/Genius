import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Genius/gen_store.dart';
import 'package:Genius/login/register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("login"), backgroundColor: Colors.black,),
      body: Form(
        key: _formKey,
        child: new Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'cant be empty';
                  }
                },
                onSaved: (input) =>
                  _email = input,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return 'password not secure';
                  }
                },
                onSaved: (input) =>
                  _password = input,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              RaisedButton(
                child: Text("Sign in"),
                onPressed: () {
                  signIn();
                  
                },
              ),
              RaisedButton(
                child: Text("Register"),
                onPressed: () {
                  Navigator.of(context).push(
                    new MaterialPageRoute(builder: (BuildContext context) => new RegisterPage())
                  );
                  
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final formState = _formKey.currentState;
    if (formState.validate()){
      formState.save();
      try {
        AuthResult result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user;
        Navigator.push(context, MaterialPageRoute(builder: (context) => GenStore()));
      } catch (e) {
        print(e);
      }
    }

  }
}