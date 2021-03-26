import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/auth/password_field.dart';
import 'package:vet_flutter/widgets/auth/submit_button.dart';
import 'package:vet_flutter/widgets/auth/text_field.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
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
            SubmitButton(
              formKey: _formKey,
              text: "Log In",
            ),
          ],
        ),
      )),
    );
  }
}