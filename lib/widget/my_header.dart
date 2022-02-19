import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyHeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[50],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/email.png'),
              ),
            ),
          ),
          const Text(
            'Nancy Henderson',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 10),
          const Text(
            'Email.Adress@gmail.com',
            style: TextStyle(fontSize: 10, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
