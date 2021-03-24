import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

Positioned buildLocationButton() {
  return Positioned(
      top: -25,
      right: 5,
      child: ElevatedButton(
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {},
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith((states) => 25),
            padding: MaterialStateProperty.resolveWith(
                (states) => EdgeInsets.all(15)),
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => kColorPrimary),
            shape:
                MaterialStateProperty.resolveWith((states) => CircleBorder()),
          )));
}
