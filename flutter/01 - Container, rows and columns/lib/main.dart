import 'package:flutter/material.dart';
import 'package:flutter_app_cp110/MyColumn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
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


