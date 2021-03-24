import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/general/navigation_drawer/header.dart';

Drawer buildDrawer(BuildContext context) {
  String name = "George Ndirangu"; //todo fetch this from somewher
  String phone = "+254746649576";

  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        drawerHeader(name, phone),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('All Veterinarians'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Quit'),
          onTap: () {
            Navigator.pop(context);
            //todo quitapp
          },
        ),
      ],
    ),
  );
}
