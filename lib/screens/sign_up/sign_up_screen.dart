import 'package:flutter/material.dart';

import 'components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }
}
