import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color:Colors.yellow,
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                color:Colors.green,
              ),
            )
          ],
        ),
      ],
    );
  }
}