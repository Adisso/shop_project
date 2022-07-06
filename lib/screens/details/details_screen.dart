import 'package:flutter/material.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
