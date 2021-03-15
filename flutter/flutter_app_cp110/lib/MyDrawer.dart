import 'package:flutter/material.dart';
import 'package:flutter_app_cp110/FirstRoute.dart';
import 'package:flutter_app_cp110/SecondRoute.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("First Screen"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstRoute()),
              );
            },
          ),
          ListTile(
            title: Text("Second Screen"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        ],
      ),
    );
  }
}
