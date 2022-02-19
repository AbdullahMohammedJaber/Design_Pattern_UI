import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexa/dummy.dart';
import 'package:hexa/model/componants.dart';
import 'package:hexa/model/componants2.dart';
// ignore: unused_import
import 'package:hexa/model/product.dart';
import 'package:hexa/screen/drawer.dart';

import 'package:hexa/screen/faq.dart';
import 'package:hexa/screen/favorait.dart';
// ignore: unused_import
import 'package:hexa/screen/hexa.dart';

import 'package:hexa/screen/seeall_product.dart';
import 'package:hexa/screen/seeall_serves.dart';
// ignore: unused_import
import 'package:hexa/widget/category_product.dart';
// ignore: unused_import
import 'package:hexa/widget/my_header.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            scaffoldkey.currentState.isDrawerOpen;
          },
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
              color: Colors.black),
        ],
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: const DecorationImage(
                        image: AssetImage(
                      'assets/homra.png',
                    )),
                  ),
                  height: 150,
                  width: MediaQuery.of(context).size.width * .85,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: prefer_const_constructors
                    Text('Product :'),

                    // ignore: deprecated_member_use
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SeeProduct.id);
                      },
                      child: const Text('SeeAll'),
                      color: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: Dummy_product.map(
                      (n) => Componants(
                        n.id,
                        n.name,
                        n.imageurl,
                        n.salary,
                      ),
                    ).toList(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: prefer_const_constructors
                    Text('Service :'),

                    // ignore: deprecated_member_use
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(Seeserves.id);
                      },
                      child: const Text('SeeAll'),
                      color: Colors.amber,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: Dummy_serves.map(
                      (n) => Componants2(
                        n.id,
                        n.name,
                        n.imageurl,
                        n.salary,
                      ),
                    ).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawershow(),
    );
  }
}
