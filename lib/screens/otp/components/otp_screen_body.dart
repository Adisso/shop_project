import 'package:flutter/material.dart';
import 'package:shop_project/constants.dart';
import 'package:shop_project/size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "OTP Verification",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.02,
                ),
                const Text("We sent your code to +48 123 123 123",
                    textAlign: TextAlign.center),
                buildTimer(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15,
                ),
                // ignore: prefer_const_constructors
                OtpForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15,
                ),
                GestureDetector(
                  onTap: () {
                    //resend otp
                  },
                  child: const Text("Resent OTP Code",
                      style: TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "${value.toInt()}",
            style: const TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
