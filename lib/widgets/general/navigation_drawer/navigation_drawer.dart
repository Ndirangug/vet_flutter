import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/models/person.dart';
import 'package:vet_flutter/screens/all_veterinarians.dart';
import 'package:vet_flutter/screens/profile.dart';
import 'package:vet_flutter/widgets/general/navigation_drawer/header.dart';

Drawer buildDrawer(BuildContext context) {
  Person person = getPerson();

  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        drawerHeader('${person.firstName} ${person.lastName}', person.phone),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ViewProfile(person)));
          },
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('All Veterinarians'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              var vets = ApiClient.allVets(VetRequest());
              return AllVeterinarians(vets);
            }));
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Quit'),
          onTap: () {
            SystemNavigator.pop();
          },
        ),
      ],
    ),
  );
}
