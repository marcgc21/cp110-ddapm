
import 'package:flutter/material.dart';
import 'package:flutter_app_cp110/MyColumn.dart';
import 'package:flutter_app_cp110/MyDrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MyAwesomeApp extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;

  const MyAwesomeApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
          actions: [
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () async {
              print("User BEFORE Log-Out -> " + auth.currentUser.toString());
              await auth.signOut();
              print("User AFTER Log-Out -> " + auth.currentUser.toString());

              Navigator.of(context).pushNamed("/");
            })
          ],
        ),
        body: Column(
          children: [
            MyColumn(),
            MyColumn(),
            MyColumn(),
          ],
        ),
      ),
    );
  }
}


