import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';

class VeterinaryDetails extends StatefulWidget {
  final List<Service> services;

  VeterinaryDetails(this.services);

  @override
  _VeterinaryDetailsState createState() => _VeterinaryDetailsState();
}

class _VeterinaryDetailsState extends State<VeterinaryDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Colors.white,
      child: Column(
        children: [Text("Services")],
      ),
    );
  }
}
