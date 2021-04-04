import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pb.dart';

class MapsView extends StatefulWidget {
  final void Function(Veterinary) openVetInfo;

  const MapsView(this.openVetInfo);

  @override
  _MapsViewState createState() => _MapsViewState();
}

class _MapsViewState extends State<MapsView> {
  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    //final vetsOffices = locations.getOffices();

    var location = Location(
        lat: -1.2939599460360305,
        long: 36.799532813964184); //TODO FETCH FROM MAPS API
    double radius = 300;
    final veterinaries = await ApiClient.fetchVeterinariesInLocation(
        LocationRequest(location: location, radius: radius));

    setState(() {
      _markers.clear();
      for (final vet in veterinaries) {
        final marker = Marker(
          markerId: MarkerId(vet.phone),
          position: LatLng(vet.address.lat, vet.address.long),
          infoWindow: InfoWindow(
              title: "${vet.firstName} ${vet.lastName}",
              snippet: vet.address.address,
              onTap: () {}),
        );
        _markers[vet.phone] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: const LatLng(0, 0),
          zoom: 2,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }
}
