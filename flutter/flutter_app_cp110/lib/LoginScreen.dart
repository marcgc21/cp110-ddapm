import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(hintText: "Email"),
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim(); //remove whitespace
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(hintText: "Password"),
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim(); //remove whitespace
                    });
                  },
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text("Login"),
                    onPressed: () async {
                      try {
                        var authUser = await auth.signInWithEmailAndPassword(
                            email: _email, password: _password);
                        if(authUser!=null){
                          print(authUser);
                          print("Login Success");
                          Navigator.of(context).pushNamed("/app");
                        }
                        else{
                          print("Login Error");
                        }

                      } on FirebaseAuthException catch (e) {
                        print(e);
                      }
                    }),
                // ignore: deprecated_member_use
                RaisedButton(
                    child: Text("Sign-Up"),
                    onPressed: () {
                      try {
                        auth.createUserWithEmailAndPassword(
                            email: _email, password: _password);
                      } catch (e) {
                        print("Error on signup " + e);
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
