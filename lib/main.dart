import 'dart:async';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:hexa/dummy.dart';
import 'package:hexa/log/thank.dart';
// ignore: unused_import
import 'package:hexa/model/product.dart';
import 'package:hexa/screen/booking.dart';

import 'package:hexa/screen/faq.dart';
import 'package:hexa/screen/favorait.dart';

import 'package:hexa/screen/final.dart';
import 'package:hexa/screen/first.dart';
import 'package:hexa/screen/hexa.dart';
import 'package:hexa/screen/home.dart';
import 'package:hexa/screen/languege.dart';
import 'package:hexa/screen/seeall_product.dart';
import 'package:hexa/screen/seeall_serves.dart';
import 'package:hexa/screen/servesdetail.dart';

import 'log/forget.dart';
import 'log/login.dart';
import 'log/sigin.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        Login.id: (BuildContext context) => Login(),
        Sigin.id: (BuildContext context) => Sigin(),
        Thank.id: (BuildContext context) => Thank(),
        Forget.id: (BuildContext context) => Forget(),
        Hexa.id: (BuildContext context) => Hexa(),
        Third.id: (BuildContext context) => Third(),
        First.id: (BuildContext context) => First(),
        Home.id: (BuildContext context) => Home(),
        Seeserves.id: (BuildContext context) => Seeserves(),
        SeeProduct.id: (BuildContext context) => SeeProduct(),
        FAQ.id: (BuildContext context) => FAQ(),
        Final.id: (BuildContext context) => Final(),
        Favorait.id: (BuildContext context) => Favorait(),
        Details.id: (BuildContext context) => Details(),
        Bokking.id: (BuildContext context) => Bokking(),
      },
    ),
  );
}

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  // ignore: prefer_final_fields

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return First();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/splash.png',
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}

/*
aka.ms/pscore6

PS E:\hexa> flutter run
Launching lib\main.dart on SM A107F in debug mode...
import java.util .scanner input = new scanner System.in
java class = new class input use in programming at all time in future 2022 
and future 2019 in all years old in world


*/