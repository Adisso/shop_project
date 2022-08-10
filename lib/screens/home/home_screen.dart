import 'package:flutter/material.dart';
import 'package:shop_project/components/custom_bottom_nav_bar.dart';
import 'package:shop_project/enums.dart';

import 'components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
