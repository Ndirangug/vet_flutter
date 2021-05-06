import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';
import 'package:vet_flutter/widgets/veterinary/fetch_vets.dart';

class MapsView extends StatefulWidget {
  final void Function(Veterinary) openVetInfo;

  const MapsView(this.openVetInfo, {required Key key}) : super(key: key);

  @override
  MapsViewState createState() => MapsViewState();
}

class MapsViewState extends State<MapsView> {
  final Map<String, Marker> _markers = {};
  List<Veterinary> vets = [];
  Location location =
      Location(lat: -1.2939599460360305, long: 36.799532813964184);
  //todo get user current locatiom

  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(location.lat, location.long),
          zoom: 6,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }

  Future<void> _onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
    print("map crested");
    newLocation(location);
  }

  void newLocation(Location newLocation) {
    this.location = newLocation;
    _updateVets(newLocation);
    print("updated location");
  }

  void repositionCamera(Location location) {
    _mapController.animateCamera(
        CameraUpdate.newLatLngZoom(LatLng(location.lat, location.long), 9));
  }

  void _updateVets(Location location) async {
    print("in update vets");
    double radius = 300;

    fetchVets(
        locationRequest: LocationRequest(location: location, radius: radius),
        onComplete: (vets) {
          print("fetched vets");
          print(vets);
          this.vets = vets;
          print(this.vets);
          _updateMarkers(vets);
        });
  }

  _updateMarkers(List<Veterinary> veterinaries) {
    setState(() {
      print("clearing markers");
      _markers.clear();

      print("making new markers");
      for (final vet in veterinaries) {
        getAddressFromCoordinates(vet.address).then((placemark) {
          final marker = Marker(
            markerId: MarkerId(vet.phone),
            position: LatLng(vet.address.lat, vet.address.long),
            infoWindow: InfoWindow(
              title: "${vet.firstName} ${vet.lastName}",
              snippet: " ${placemark.name} ${placemark.street}",
            ),
            onTap: () {
              widget.openVetInfo(vet);
            },
          );

          _markers[vet.phone] = marker;
        });
      }

      _mapController.animateCamera(
          CameraUpdate.newLatLngZoom(LatLng(location.lat, location.long), 10));
    });
  }
}
