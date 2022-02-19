import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hexa/screen/faq.dart';
import 'package:hexa/screen/favorait.dart';
import 'package:hexa/screen/hexa.dart';

import 'package:hexa/screen/home.dart';
import 'package:hexa/widget/my_header.dart';

// ignore: must_be_immutable
// ignore: use_key_in_widget_constructors
// ignore: must_be_immutable
// ignore: use_key_in_widget_constructors
class Final extends StatelessWidget {
  static String id = 'Final';
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Booking Details',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              scaffoldkey.currentState.isDrawerOpen;
            },
            icon: const Icon(Icons.menu),
            color: Colors.black),
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: avoid_unnecessary_containers
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Stack(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      margin: const EdgeInsets.only(top: 40, left: 20),
                      child: const Image(
                        image: AssetImage('assets/order.png'),
                      ),
                    ),

                    // ignore: avoid_unnecessary_containers
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 10),
                      child: Image.asset('assets/star.png'),
                    ),

                    // ignore: avoid_unnecessary_containers
                    Container(
                      margin: const EdgeInsets.only(top: 165, left: 30),
                      child: Image.asset('assets/hint.png'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const Text(
                    'Succeded',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Padding(
              padding: const EdgeInsets.all(0),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Text(
                    'The Request was Sent Succefully',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Padding(
              padding: const EdgeInsets.all(0),
              // ignore: avoid_unnecessary_containers
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 3),
                  child: const Text(
                    'To Track Your Order From The Order Page',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Padding(
              padding: const EdgeInsets.all(0),
              // ignore: avoid_unnecessary_containers
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(Home.id);
                    },
                    child: const Text(
                      'Go To Order',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
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
      ),
    );
  }
}
