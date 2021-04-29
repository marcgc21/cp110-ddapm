import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class CloudMessaging{
  static FirebaseMessaging _fcm;
  static BuildContext context;

  initializeFCM() async{
    String token;
    _fcm = FirebaseMessaging.instance;
  }

  // ignore: missing_return
  Future<dynamic> _onMessage(message){
    print('Message!');
  }
  // ignore: missing_return
  Future<dynamic> _onLaunch(message){
    print('Launch!');
  }
  // ignore: missing_return
  Future<dynamic> _onResume(message){
    print('Resume!');
  }

}
