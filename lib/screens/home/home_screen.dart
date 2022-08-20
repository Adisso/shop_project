import 'package:flutter/material.dart';
import 'package:shop_project/components/custom_bottom_nav_bar.dart';
import 'package:shop_project/enums.dart';

import '../../size_config.dart';
import 'components/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
