import 'package:flutter/material.dart';
import 'package:shop_project/size_config.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DiscountBanner(),
            Categories(),
          ],
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg,", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg,", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg,", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg,", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg,", "text": "More"},
    ];
    return SizedBox();
  }
}
