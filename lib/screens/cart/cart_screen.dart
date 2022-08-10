import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_project/components/default_button.dart';
import 'package:shop_project/constants.dart';
import 'package:shop_project/models/cart.dart';
import 'package:shop_project/size_config.dart';

import 'components/cart_screen_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildCartScreenTitle(context),
      ),
      body: const Body(),
      bottomNavigationBar: const CheckOurCard(),
    );
  }

  Column buildCartScreenTitle(BuildContext context) {
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
          "${demoCarts.length} items",
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add voucher code"),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                          text: "\$337.15",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(text: "Check Out", press: () {}),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
