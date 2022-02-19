import 'package:flutter/material.dart';

Widget rating() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 120,
                  ),
                  const Text(
                    '5.5',
                    textAlign: TextAlign.center,
                    // ignore: unnecessary_const
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              const Text(
                'Average Rating',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'The product rated by 220 people',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text('See what people say'),
                    const Icon(Icons.forward_outlined)
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    ],
  );
}
