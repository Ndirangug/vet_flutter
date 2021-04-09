import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';

class MapsView extends StatefulWidget {
  final void Function(Veterinary) openVetInfo;

  const MapsView(this.openVetInfo, {required Key key}) : super(key: key);

  @override
  MapsViewState createState() => MapsViewState();
}

class MapsViewState extends State<MapsView> {
  final Map<String, Marker> _markers = {};
  Location location =
      Location(lat: -1.2939599460360305, long: 36.799532813964184);

  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(location.lat, location.long),
          zoom: 2,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
  }

  void newLocation(Location newLocation) {
    setState(() {
      this.location = newLocation;
    });
  }

  void updateMap() async {
    double radius = 300;

    final veterinaries = await ApiClient.fetchVeterinariesInLocation(
        LocationRequest(location: location, radius: radius));

    setState(() {
      _markers.clear();

      for (final vet in veterinaries) {
        getAddressFromCoordinates(vet.address).then((placemark) {
          final marker = Marker(
            markerId: MarkerId(vet.phone),
            position: LatLng(vet.address.lat, vet.address.long),
            infoWindow: InfoWindow(
                title: "${vet.firstName} ${vet.lastName}",
                snippet: " ${placemark.name} ${placemark.street}",
                onTap: () {}),
          );

          _markers[vet.phone] = marker;
        });
      }
    });

    _mapController.animateCamera(
        CameraUpdate.newLatLng(LatLng(location.lat, location.long)));
  }
}
