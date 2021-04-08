import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_flutter/screens/auth/fetch_user.dart';
import 'package:vet_flutter/widgets/auth/password_field.dart';
import 'package:vet_flutter/widgets/auth/submit_button.dart';
import 'package:vet_flutter/widgets/auth/text_field.dart';

class LogIn extends StatefulWidget {
  final FirebaseAuth firebaseAuth;

  LogIn({required this.firebaseAuth});

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

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
                email = value!;
                return null;
              },
            ),
            PasswordField(
                label: "Password",
                validator: (value) {
                  password = value!;
                  return null;
                }),
            SubmitButton(
              formKey: _formKey,
              text: "Log In",
              onClick: loginUser,
            ),
          ],
        ),
      )),
    );
  }

  void loginUser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      initUser(userCredential, context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('No user found for that email..')));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Wrong password provided for that user.')));
      }
    }
  }
}
