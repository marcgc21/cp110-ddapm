import 'package:flutter/material.dart';
import 'package:flutter_app_cp110/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_cp110/MyAwesomeApp.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase App',
      initialRoute: '/',
      routes: {
        '/':(context)=>LoginScreen(),
        '/app':(context)=>MyAwesomeApp(),
      },
    );
  }
}






