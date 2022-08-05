import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_project/screens/sign_in/sign_in_screen.dart';
import 'profile_menu.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfilePicture(),
          const SizedBox(height: 20),
          ProfileMenu(
            press: () {},
            icon: "assets/icons/User Icon.svg",
            text: "My Account",
          ),
          ProfileMenu(
            press: () {},
            icon: "assets/icons/Bell.svg",
            text: "Notifications",
          ),
          ProfileMenu(
            press: () {},
            icon: "assets/icons/Settings.svg",
            text: "Settings",
          ),
          ProfileMenu(
            press: () {},
            icon: "assets/icons/Question mark.svg",
            text: "Help Center",
          ),
          ProfileMenu(
            press: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  SignInScreen.routeName, (Route<dynamic> route) => false);
            },
            icon: "assets/icons/Log out.svg",
            text: "Log Out",
          ),
        ],
      ),
    );
  }
}
