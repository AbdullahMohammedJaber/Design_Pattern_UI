import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:hexa/model/product.dart';

// ignore: use_key_in_widget_constructors
class Favorait extends StatelessWidget {
  static String id = 'Favorait';

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

/*
 final List<Product> favoraiteproduct = [];
  void _togglefavorait(String productid) {
    final exiteindex =
        favoraiteproduct.indexWhere((element) => element.id == productid);
    if (exiteindex >= 0) {
      favoraiteproduct.removeAt(exiteindex);
    } else {
      favoraiteproduct
          .add(Dummy_product.firstWhere((element) => element.id == productid));
    }
  }
*/