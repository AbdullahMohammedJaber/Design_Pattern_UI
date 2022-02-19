import 'package:flutter/material.dart';
import 'package:hexa/screen/faq.dart';
import 'package:hexa/screen/favorait.dart';
// ignore: unused_import
import 'package:hexa/screen/hexa.dart';
import 'package:hexa/screen/home.dart';
import 'package:hexa/widget/my_header.dart';

class Drawershow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Home.id);
                },
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Hexa.id);
                },
                title: const Text(
                  'Go To Coffy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Notification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'My Orders',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(Favorait.id);
                },
                title: const Text(
                  'My Favorite',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Offers',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'About Us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(FAQ.id);
                },
                title: const Text(
                  'FAQ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Setting',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListTile(
                onTap: () {},
                title: const Text(
                  'Log Out',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
