import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/auth/form_dropdown.dart';
import 'package:vet_flutter/widgets/auth/password_field.dart';
import 'package:vet_flutter/widgets/auth/submit_button.dart';

import '../../../widgets/auth/text_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          MyTextField(
            label: "Email or Phone",
            validator: (value) {
              return null;
            },
          ),
          PasswordField(
              label: "Password",
              validator: (value) {
                return null;
              }),
          PasswordField(
              label: "Confirm Password",
              validator: (value) {
                return null;
              }),
          FormDropDownField(
            label: "Veterinary or Farmer",
            options: <String>[r'Veterinary', 'Farmer'],
            initialValue: "Veterinary",
          ),
          SubmitButton(
            formKey: _formKey,
            text: "Sign Up",
          ),
        ],
      ),
    ));
  }
}
