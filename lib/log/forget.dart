import 'package:flutter/material.dart';
import 'package:hexa/log/login.dart';

// ignore: use_key_in_widget_constructors
class Forget extends StatelessWidget {
  static String id = 'Forget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 320, top: 50),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Login.id);
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(left: 10, top: 10),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Forget Password?',
                style: TextStyle(fontSize: 70),
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  width: 350,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        // ignore: prefer_const_constructors
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(fontSize: 20),
                            hintText: 'Email.Adress@gmail.com',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(50),
            // ignore: deprecated_member_use
            child: FlatButton(
              padding: const EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Send',
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                ],
              ),
              color: Colors.amber[600],
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
