
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vet_flutter/screens/all_veterinarians.dart';
import 'package:vet_flutter/screens/profile.dart';
import 'package:vet_flutter/widgets/general/navigation_drawer/header.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          ProfileSummary(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ViewProfile()));
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('All Veterinarians'),
            onTap: () {
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AllVeterinarians()));
              });
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == "/auth");
              });
            },
          ),
        ],
      ),
    );
  }
}




