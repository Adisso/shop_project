import 'package:flutter/material.dart';
import 'package:shop_project/screens/cart/cart_screen.dart';
import 'package:shop_project/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_project/screens/details/details_screen.dart';
import 'package:shop_project/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_project/screens/home/home_screen.dart';
import 'package:shop_project/screens/login_succes/login_succes_screen.dart';
import 'package:shop_project/screens/otp/otp_screen.dart';
import 'package:shop_project/screens/profile/profile_screen.dart';
import 'package:shop_project/screens/sign_in/sign_in_screen.dart';
import 'package:shop_project/screens/sign_up/sign_up_screen.dart';
import 'package:shop_project/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccesScreen.routeName: (context) => const LoginSuccesScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
