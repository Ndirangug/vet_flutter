import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image(image: AssetImage("assets/images/splash.png")),
        onDoubleTap: () {
          Navigator.pushNamed(context, '/auth');
        },
      ),
    );
  }
}
