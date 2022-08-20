import 'package:flutter/material.dart';
import 'package:shop_project/authentication.dart';

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
  final _streetController = TextEditingController();
  final _streetNumberController = TextEditingController();
  final _postCodeController = TextEditingController();
  final _cityController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneNumberController.dispose();
    _streetController.dispose();
    _streetNumberController.dispose();
    _postCodeController.dispose();
    _cityController.dispose();

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
          buildStreetFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildStreetNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildPostCodeFormField(),
          SizedBox(height: getProportionateScreenHeight(15)),
          buildCityFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Auth.addUserInfoToFirestore(
                  firstName: _firstNameController.text.trim(),
                  lastName: _lastNameController.text.trim(),
                  phoneNumber: int.parse(_phoneNumberController.text.trim()),
                  street: _streetController.text.trim(),
                  streetNumber: _streetNumberController.text.trim(),
                  postCode: _postCodeController.text.trim(),
                  city: _cityController.text.trim(),
                );
                Auth.goToStore();
              }
            },
          )
        ],
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

  TextFormField buildStreetFormField() {
    return TextFormField(
      controller: _streetController,
      keyboardType: TextInputType.streetAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 2) {
          return 'Enter a valid street';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Street",
        hintText: "Enter your street",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildStreetNumberFormField() {
    return TextFormField(
      controller: _streetNumberController,
      keyboardType: TextInputType.streetAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter a valid street number';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Street number",
        hintText: "Enter your street number",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildPostCodeFormField() {
    return TextFormField(
      controller: _postCodeController,
      keyboardType: TextInputType.streetAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 3) {
          return 'Enter a valid postal code';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Postal code",
        hintText: "Enter your postal code",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField buildCityFormField() {
    return TextFormField(
      controller: _cityController,
      keyboardType: TextInputType.streetAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.length < 4) {
          return 'Enter a valid city';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "City",
        hintText: "Enter your city",
        suffixIcon: CustomSurffixIcon(
          icon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }
}
