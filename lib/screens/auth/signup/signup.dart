import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_flutter/screens/auth/fetch_user.dart';
import 'package:vet_flutter/widgets/auth/password_field.dart';
import 'package:vet_flutter/widgets/auth/submit_button.dart';

import '../../../widgets/auth/text_field.dart';

class SignUp extends StatefulWidget {
  final FirebaseAuth firebaseAuth;
  final void Function(BuildContext) showProgressDialog;

  SignUp({required this.firebaseAuth, required this.showProgressDialog});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String pass1 = "";
  String pass2 = "";
  String email = "";

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
              email = value!;
              return null;
            },
          ),
          PasswordField(
              label: "Password",
              validator: (value) {
                pass1 = value!;

                return pass1 == pass2 ? null : "Your passwords don't match!";
              }),
          PasswordField(
              label: "Confirm Password",
              validator: (value) {
                pass2 = value!;
                return pass1 == pass2 ? null : "Your passwords don't match!";
              }),
          SubmitButton(
            formKey: _formKey,
            text: "Sign Up",
            onClick: registerUser,
          ),
        ],
      ),
    ));
  }

  void registerUser() async {
    widget.showProgressDialog(context);
    try {
      print("creating user");
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass1);

      Navigator.of(context).pop();

      initUser(userCredential, context);
    } on FirebaseAuthException catch (e) {
      Navigator.of(context).pop();

      if (e.code == 'weak-password') {
        _formKey.currentState!.reset();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('The password provided is too weak.')));
      } else if (e.code == 'email-already-in-use') {
        _formKey.currentState!.reset();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('The account already exists for that email')));
      }
    } catch (e) {
      Navigator.of(context).pop();
      _formKey.currentState!.reset();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
