import 'package:flutter/material.dart';
import 'profile_menu.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ProfilePicture(),
          SizedBox(height: 20),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "My Account",
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",
            text: "Notifications",
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",
            text: "Settings",
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            text: "Help Center",
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",
            text: "Log Out",
          ),
        ],
      ),
    );
  }
}
