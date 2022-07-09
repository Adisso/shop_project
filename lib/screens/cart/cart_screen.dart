import 'package:flutter/material.dart';
import 'package:shop_project/size_config.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildAppBarTitle(),
      ),
    );
  }

  Column buildAppBarTitle() {
    return Column(
      children: [
        Text(
          "Your Cart",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(24),
          ),
        ),
        Text(
          "4 items",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
      ],
    );
  }
}
