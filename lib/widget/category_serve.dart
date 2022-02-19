import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CategoryServe extends StatelessWidget {
  final String id;
  final String name;
  final String imageurl;
  final double salary;

  // ignore: use_key_in_widget_constructors
  // ignore: prefer_const_constructors_in_immutables
  // ignore: use_key_in_widget_constructors
  const CategoryServe(
    // ignore: invalid_required_positional_param
    this.id,
    // ignore: invalid_required_positional_param
    this.name,
    // ignore: invalid_required_positional_param
    this.imageurl,
    // ignore: invalid_required_positional_param
    this.salary,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 18,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.amber,
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageurl),
          const SizedBox(
            height: 10,
          ),
          Text(name),
          const SizedBox(
            height: 10,
          ),
          Text('$salary'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Icon(
                Icons.add_shopping_cart,
              ),
              // ignore: prefer_const_constructors
              Icon(
                Icons.remove_shopping_cart,
              ),
            ],
          )
        ],
      ),
    );
  }
}
