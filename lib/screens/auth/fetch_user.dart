import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

void initUser(UserCredential userCredential, BuildContext context) {
  SharedPreferences.getInstance().then((prefs) {
    fetchUserProfile(userCredential.user!.email!);
  });

  Navigator.of(context).pushNamed('/discover');
}

void fetchUserProfile(String email) {
  ApiClient.getProfile(FarmerRequest(email: email)).then((farmer) {
    String farmerStr = jsonEncode(farmer);
    print(farmerStr);

    SharedPreferences.getInstance().then((prefs) {
      prefs.setString("farmer", farmerStr);
    });
  });
}
