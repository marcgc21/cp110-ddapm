import 'package:flutter/material.dart';

import 'models/Event.dart';

class EventDetail extends StatelessWidget {

  final Event event;

  const EventDetail({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.numberDay),
      ),
      body: Container(
        child: Row(
          children: [
            Text(event.nameDay),
            Text(event.numberDay),
            Text(event.month),
          ],
        ),
      ),
    );
  }
}
