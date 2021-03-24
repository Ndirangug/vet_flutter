import 'package:flutter/material.dart';
import 'package:vet_flutter/screens/auth/login_signup.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image(image: AssetImage("assets/images/splash.png")),
        onDoubleTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginSignup()));
        },
      ),
    );
  }
}
