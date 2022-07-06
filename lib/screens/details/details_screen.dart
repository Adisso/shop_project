import 'package:flutter/material.dart';
import 'package:shop_project/screens/details/custom_app_bar.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppBar(
          rating: 4.1,
        ));
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
