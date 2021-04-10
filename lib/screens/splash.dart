import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    new Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed('/auth');
    });

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
