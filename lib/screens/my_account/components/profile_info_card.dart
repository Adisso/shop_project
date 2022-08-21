import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final String title, subtitle;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: const BorderSide(color: Colors.white, width: 1),
      ),
      margin: const EdgeInsets.all(15),
      shadowColor: kSecondaryColor,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Icon(
                icon,
                color: kSecondaryColor,
              ),
            ),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: TextButton(
              onPressed: press,
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
