import 'package:flutter/material.dart';
import 'package:shop_project/components/default_button.dart';
import 'package:shop_project/screens/home/home_screen.dart';
import 'package:shop_project/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
          child: Text(
            "Login Succes",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.popAndPushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
