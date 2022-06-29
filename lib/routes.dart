import 'package:flutter/material.dart';
import 'package:shop_project/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_project/screens/sign_in/sign_in_screen.dart';
import 'package:shop_project/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
};
