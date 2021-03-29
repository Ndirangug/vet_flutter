import 'package:flutter/material.dart';

ElevatedButton buildAppBarButton(
    IconData icon, void Function() onPressed, List<double> radii) {
  return ElevatedButton(
      child: Icon(icon, color: Colors.black),
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        visualDensity: VisualDensity.compact,
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Colors.white),
        shape: MaterialStateProperty.resolveWith((states) =>
            RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(radii[0], radii[1])))),
      ));
}
