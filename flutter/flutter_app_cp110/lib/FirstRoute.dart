import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              ListTile(
                tile
                leading:Icon(Icons.access_alarms),
                title: Container(
                  color: Colors.red,
                  width: 30,
                  child: Text("hoal"),
                ),
                subtitle: Text("hahahaha"),
                isThreeLine: true,
                dense: true,
                trailing: Icon(Icons.ac_unit_sharp),
              ),
              ListTile(
                title: Text("List tile"),
                subtitle: Text("hahahaha"),
                isThreeLine: true,
                dense: true,
                trailing: Icon(Icons.ac_unit_sharp),
              ),
              ListTile(
                title: Text("List tile"),
                subtitle: Text("hahahaha"),
                isThreeLine: true,
                dense: true,
                trailing: Icon(Icons.ac_unit_sharp),
              ),
              ListTile(
                title: Text("List tile"),
                subtitle: Text("hahahaha"),
                isThreeLine: true,
                dense: true,
                trailing: Icon(Icons.ac_unit_sharp),
              ),
            ],
          ),
        )
    );
  }
}