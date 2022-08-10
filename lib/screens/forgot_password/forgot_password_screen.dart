import 'package:flutter/material.dart';
import 'components/forgot_pass_screen_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot password"),
      ),
      body: const Body(),
    );
  }
}
