import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

void initUser(UserCredential userCredential, BuildContext context) {
  SharedPreferences.getInstance().then((prefs) {
    fetchUserProfile(userCredential.user!.email!);
    Navigator.of(context).pushNamed('/discover');
  });
}

void fetchUserProfile(String email) {
  ApiClient.getProfile(FarmerRequest(email: email)).then((farmer) {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setInt("farmerId", farmer.farmerId);
      prefs.setString("farmerFName", farmer.firstName);
      prefs.setString("farmerLName", farmer.lastName);
      prefs.setString("farmerEmail", farmer.email);
      prefs.setString("farmerPhone", farmer.phone);
      prefs.setDouble("farmerLat", farmer.address.lat);
      prefs.setDouble("farmerLong", farmer.address.long);
    });
  });
}

Future<Farmer> getCachedUser() async {
  Farmer farmer = Farmer();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  farmer.farmerId = prefs.getInt("farmerId")!;
  farmer.firstName = prefs.getString("farmerFName")!;
  farmer.lastName = prefs.getString("farmerLName")!;
  farmer.email = prefs.getString("farmerEmail")!;
  farmer.phone = prefs.getString("farmerPhone")!;
  farmer.address = Location(
      lat: prefs.getDouble("farmerLat"), long: prefs.getDouble("farmerLong"));

  return farmer;
}
