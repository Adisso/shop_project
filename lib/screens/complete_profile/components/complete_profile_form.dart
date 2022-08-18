import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shop_project/authentication.dart';
import 'package:shop_project/screens/otp/otp_screen.dart';

import '../../../components/custom_surffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _adressController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _adressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(15)),
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Auth.addUserInfoToFirestore(
                  firstName: _firstNameController.text.trim(),
                  lastName: _lastNameController.text.trim(),
                  phoneNumber: int.parse(_phoneNumberController.text.trim()),
                  adress: _adressController.text.trim(),
                );
                Auth.goToStore();
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      controller: _adressController,
      keyboardType: TextInputType.streetAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 5) {
          return 'Enter a valid adress';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      controller: _phoneNumberController,
      keyboardType: TextInputType.phone,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length != 9) {
          return 'Enter a valid number';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      controller: _lastNameController,
      keyboardType: TextInputType.name,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 2) {
          return 'Enter a valid last name';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "LastName",
        hintText: "Enter your last name",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      controller: _firstNameController,
      keyboardType: TextInputType.name,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 2) {
          return 'Enter a valid name';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "FirstName",
        hintText: "Enter your first name",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
