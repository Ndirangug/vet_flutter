import 'package:flutter/material.dart';

AppBar buildAppBar(GlobalKey<ScaffoldState> drawerKey) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      child: ElevatedButton(
          child: Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            drawerKey.currentState!.openDrawer();
          },
          style: ButtonStyle(
            visualDensity: VisualDensity.compact,
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(35, 20)))),
          )),
      margin: EdgeInsets.only(left: 18, top: 20),
    ),
  );
}
