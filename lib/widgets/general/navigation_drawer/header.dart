import 'package:flutter/material.dart';

import '../../../constants.dart';

DrawerHeader drawerHeader(String firstName, String lastName, String phone) {
  return DrawerHeader(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey.shade300,
            backgroundImage: NetworkImage(
                'https://ui-avatars.com/api/?name=$firstName+$lastName'),
          ),
        ),
        Container(
          child: Text(
            '$firstName $lastName',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          margin: EdgeInsets.only(top: 15, bottom: 5),
        ),
        Container(
          child: Text(
            phone,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          margin: EdgeInsets.only(top: 5),
        )
      ],
    ),
    decoration: BoxDecoration(
      color: kColorPrimary,
    ),
  );
}
