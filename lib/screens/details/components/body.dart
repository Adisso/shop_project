import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
