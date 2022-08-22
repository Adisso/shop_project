import 'package:flutter/material.dart';

import 'package:shop_project/screens/profile/components/profile_picture.dart';

import 'profile_info_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfilePicture(),
          const SizedBox(height: 20),
          ProfileInfoCard(
            title: "test@test.com",
            subtitle: "Email",
            icon: Icons.email,
            press: () {},
          ),
          ProfileInfoCard(
            title: "Adrian",
            subtitle: "first name",
            icon: Icons.person,
            press: () {},
          ),
          ProfileInfoCard(
            title: "Nowak",
            subtitle: "Last Name",
            icon: Icons.person,
            press: () {},
          ),
          ProfileInfoCard(
            title: "621 633 565",
            subtitle: "phone number",
            icon: Icons.phone,
            press: () {},
          ),
          ProfileInfoCard(
            title: "Kopernika",
            subtitle: "street",
            icon: Icons.my_location,
            press: () {},
          ),
          ProfileInfoCard(
            title: "52",
            subtitle: "Street Number",
            icon: Icons.my_location,
            press: () {},
          ),
          ProfileInfoCard(
            title: "55-300",
            subtitle: "Post Code",
            icon: Icons.location_city,
            press: () {},
          ),
          ProfileInfoCard(
            title: "Środa Śląska",
            subtitle: "City",
            icon: Icons.location_city,
            press: () {},
          )
        ],
      ),
    );
  }
}
