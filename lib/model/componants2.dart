import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hexa/screen/servesdetail.dart';

// ignore: must_be_immutable
class Componants2 extends StatelessWidget {
  final String id;
  final String name;
  final String imageurl;
  final double salary;

  // ignore: use_key_in_widget_constructors
  const Componants2(
    this.id,
    this.name,
    this.imageurl,
    this.salary,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(Details.id, arguments: id);
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Image.asset(imageurl),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      // ignore: unnecessary_brace_in_string_interps
                      '${salary} SAR',
                      style: const TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.plus_one),
                          color: Colors.amber,
                        ),
                        const Text(
                          '05',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.exposure_minus_1),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
 

*/
