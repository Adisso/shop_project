import 'package:firebase_auth/firebase_auth.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shop_project/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_project/components/custom_snack_bar.dart';

import 'screens/login_succes/login_success_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';

final NavigationService navService = NavigationService();

class Auth {
  static Future signInToFirebase(
      {required String emailAddress, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      CustomSnackBar.showSnackBar(e.message);
    }
  }

  static void goToStore() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        navService.pushNamed(LoginSuccesScreen.routeName);
      }
    });
  }

  static Future signOutFromFirebase() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      CustomSnackBar.showSnackBar(e.message);
    }
  }

  static void goToLoginPage() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        navService.pushNamedAndRemoveUntil(SignInScreen.routeName);
      }
    });
  }

  static Future registerAccount({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
    } on FirebaseAuthException catch (e) {
      CustomSnackBar.showSnackBar(e.message);
    }
  }

  static void goToCompleteProfile() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        navService.pushNamedAndRemoveUntil(CompleteProfileScreen.routeName);
      }
    });
  }

  static Future resetPassword({required String emailAddress}) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      CustomSnackBar.showSnackBar("Password reset email was send");
    } on FirebaseAuthException catch (e) {
      CustomSnackBar.showSnackBar(e.message);
    }
  }
}
