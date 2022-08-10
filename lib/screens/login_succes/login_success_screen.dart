import 'package:flutter/material.dart';

import 'components/login_success_body.dart';

class LoginSuccesScreen extends StatelessWidget {
  const LoginSuccesScreen({Key? key}) : super(key: key);
  static String routeName = "/login_succes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login success"),
      ),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }
}
