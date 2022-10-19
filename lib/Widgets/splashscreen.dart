// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, unused_field, prefer_final_fields, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:singlerestaurant/pages/Onboarding/Onboarding.dart';
import 'package:singlerestaurant/common%20class/color.dart';
import 'package:singlerestaurant/common%20class/prefs_name.dart';
import 'package:singlerestaurant/config/location/location.dart';
import 'package:singlerestaurant/main.dart';
import 'package:singlerestaurant/pages/Home/Homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  int? initdata;
  // const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
  Splashscreen([this.initdata]);
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    initdata();
  }

  int? initScreen;
  int _counter = 0;

  initdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    initScreen = prefs.getInt(init_Screen);
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) =>
             Homepage(0),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    // connections().conect();
    location_permission().parmission();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('Assets/Icons/ic_logo.png',width: 200.0,height: 200.0,),
      ),
    );
  }
}

void showNotification() {
  flutterLocalNotificationsPlugin.show(
    0,
    "single",
    "single resuaurant ?",
    NotificationDetails(
      android: AndroidNotificationDetails(
        channel.id, channel.name,
        importance: Importance.high,
        // color: Colors.blue,
        playSound: true,
        icon: '@drawable/ic_notification',
        fullScreenIntent: true,
      ),
    ),
    payload: {
      "category_name": "1",
      "category_id": "2",
      "sub_type": "3",
      "item_id": "4",
      "type": "order",
      "order_id": "252"
    }.toString(),
  );
}
