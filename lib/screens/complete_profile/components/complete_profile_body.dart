import 'package:flutter/material.dart';
import 'package:shop_project/size_config.dart';

import 'complete_profile_form.dart';

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
                Text(
                  "Complete Profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Complete your details or continue \nwith social media",
                  textAlign: TextAlign.center,
                ),
                // ignore: prefer_const_constructors
                CompleteProfileForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                const Text(
                  "By continuing you confirm that you agree  \nwith our Terms and Conditions",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
