import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/screens/auth/fetch_user.dart';
import 'package:vet_flutter/widgets/auth/password_field.dart';
import 'package:vet_flutter/widgets/auth/submit_button.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';

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
  String phone = "";
  String fName = "";
  String lName = "";

  late Location location;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          MyTextField(
            label: "First Name",
            validator: (value) {
              fName = value!;
              return null;
            },
          ),
          MyTextField(
            label: "Last Name",
            validator: (value) {
              lName = value!;
              return null;
            },
          ),
          MyTextField(
            label: "Email",
            validator: (value) {
              email = value!;
              return null;
            },
          ),
          MyTextField(
            label: "Phone",
            validator: (value) {
              if (value!.length != 10) {
                return "Phone number is invalid!";
              }
              phone = value;
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
      //print("creating user");
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass1);
      //print("created user");

      getCurrentLocation().then((locationData) {
        location =
            Location(lat: locationData!.latitude, long: locationData.longitude);
        //print("located user $location");

        Farmer farmer = Farmer(
            firstName: fName,
            lastName: lName,
            email: email,
            phone: phone,
            address: location);

        ApiClient.createFarmer(farmer).then((farmer) {
          Navigator.of(context).pop();

          initUser(userCredential, context);
        }).onError<GrpcError>((error, _) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error.message.toString())));
        }).onError<Error>((error, stackTrace) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error.toString())));
        });
      });
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
