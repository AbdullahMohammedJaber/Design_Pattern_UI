import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexa/log/login.dart';

// ignore: use_key_in_widget_constructors
class Thank extends StatelessWidget {
  static String id = 'Thank';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/telegram.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Thank you',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Thank You For Registering With',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Moon Application',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Login.id);
                },
                child: Text(
                  'Go To Home',
                  style: TextStyle(color: Colors.amber[600]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
