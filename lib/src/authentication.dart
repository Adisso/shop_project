import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/login_succes/login_succes_screen.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class Auth {
  static Future signInToFirebase(
      {required String emailAddress,
      required String password,
      required BuildContext context}) async {
    try {
      // ignore: unused_local_variable
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnackBarError(
            error: 'No user found for that email.', context: context);
      } else if (e.code == 'wrong-password') {
        showSnackBarError(error: 'Wrong password', context: context);
      }
    }
  }

  static Future goToStore(context) async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        Navigator.pushNamed(context, LoginSuccesScreen.routeName);
      }
    });
  }

  static void showSnackBarError(
      {required String error, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(error),
      ),
    );
  }

  static Future<String?> signOutFromFirebase() async {
    try {
      await FirebaseAuth.instance.signOut();
      return null;
    } on FirebaseAuthException catch (e) {
      return "${e.code}: ${e.message}";
    }
  }

  static Future goToLoginPage(context) async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const SignInScreen()),
            ModalRoute.withName(SplashScreen.routeName));
      }
    });
  }
}
