import 'package:flutter/material.dart';
import 'package:shop_project/components/no_account_text.dart';
import 'package:shop_project/size_config.dart';
import 'forgot_pass_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(28),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                const Text(
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionateScreenHeight(140)),
                const ForgotPassForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.12),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
