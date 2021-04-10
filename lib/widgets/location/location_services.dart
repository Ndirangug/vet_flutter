import 'package:geocoding/geocoding.dart' as gc;
import 'package:location/location.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart' as pb;

Future<LocationData?> getCurrentLocation() async {
  Location location = new Location();
  location.changeSettings(accuracy: LocationAccuracy.low);
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return null;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return null;
    }
  }

  print("awiating location");
  //_locationData = await location.getLocation();
  _locationData = LocationData.fromMap({"latitude": 0, 'longitude': 0});
  print("got location");
  return _locationData;
}

Future<gc.Placemark> getAddressFromCoordinates(pb.Location location) async {
  List<gc.Placemark> placemarks =
      await gc.placemarkFromCoordinates(location.lat, location.long);

  return placemarks[0];
}

Future<pb.Location> getCoordinatesFromAddress(String address) async {
  print("address $address");
  List<gc.Location> locations = await gc.locationFromAddress(address);
  print(locations);
  return pb.Location(lat: locations[0].latitude, long: locations[0].longitude);
}
