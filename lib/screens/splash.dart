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
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/splash.png"),
                  fit: BoxFit.cover)),
        ),
        onDoubleTap: () {
          Navigator.pushNamed(context, '/auth');
        },
      ),
    );
  }
}
