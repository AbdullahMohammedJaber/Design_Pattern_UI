import 'package:flutter/material.dart';
import 'package:hexa/screen/languege.dart';

// ignore: use_key_in_widget_constructors
class First extends StatelessWidget {
  static String id = 'First';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/cake.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          const Positioned(
            child: Text(
              "Moon",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            top: 50,
            left: 19.5,
          ),
          const Positioned(
            child: Text(
              "Love",
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
            top: 71,
            left: 27,
          ),
          const Positioned(
            child: Text(
              "Yourself",
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
            top: 126,
            left: 27,
          ),
          const Positioned(
            child: Text(
              "Better",
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
            top: 182,
            left: 27,
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Third.id);
              },
              child: Row(
                children: [
                  const Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Container(
                    // padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            bottom: 50,
            left: MediaQuery.of(context).size.width * 0.18,
          ),
        ],
      ),
    );
  }
}
