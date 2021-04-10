import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/discover/map/maps_view.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';

Positioned buildLocationButton(GlobalKey<MapsViewState> mapsKey) {
  return Positioned(
      top: -25,
      right: 5,
      child: ElevatedButton(
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            getCurrentLocation().then((locationData) {
              print("gotten new location $locationData");
              mapsKey.currentState!.newLocation(Location(
                  lat: locationData!.latitude, long: locationData.longitude));
            });
          },
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
