import 'package:flutter/material.dart';
import 'package:hexa/screen/home.dart';

// ignore: use_key_in_widget_constructors
class Hexa extends StatelessWidget {
  static String id = 'Hexa';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            const Text(
              "Choose a section",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Home.id);
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(1),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/x.png",
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Home.id);
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(1),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/y.png",
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
