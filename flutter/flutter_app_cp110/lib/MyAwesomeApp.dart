import 'package:flutter/material.dart';
import 'package:flutter_app_cp110/MyColumn.dart';
import 'package:flutter_app_cp110/MyDrawer.dart';

class MyAwesomeApp extends StatelessWidget {
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


