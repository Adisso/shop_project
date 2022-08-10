import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:shop_project/authentication.dart';

import '../../../components/custom_surffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(height: getProportionateScreenHeight(100)),
          // Send reset password if email is valid
          DefaultButton(
            text: "Reset Password",
            press: () {
              if (_formKey.currentState!.validate()) {
                Auth.resetPassword(emailAddress: emailController.text.trim());
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      // Validation
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (email) => email != null && !EmailValidator.validate(email)
          ? 'Enter a valid email'
          : null,
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSurffixIcon(icon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
