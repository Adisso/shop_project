import 'package:flutter/material.dart';
import 'package:shop_project/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Body(),
    );
  }
}
