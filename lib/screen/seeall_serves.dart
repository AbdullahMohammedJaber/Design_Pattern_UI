import 'package:flutter/material.dart';
import 'package:hexa/dummy.dart';
import 'package:hexa/model/componants.dart';
import 'package:hexa/screen/home.dart';

// ignore: use_key_in_widget_constructors
class Seeserves extends StatelessWidget {
  static String id = 'Seeserves';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(Home.id);
          },
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
          'Services',
          style: TextStyle(color: Colors.black),
        ),
      ),
      // ignore: avoid_unnece
      body: GridView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(15),
        children: Dummy_serves.map(
          (n) => Componants(
            n.id,
            n.name,
            n.imageurl,
            n.salary,
          ),
        ).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 4.2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 10,
          maxCrossAxisExtent: 200,
        ),
      ),
    );
  }
}
