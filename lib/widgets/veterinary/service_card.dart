import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';

class ServiceCard extends StatefulWidget {
  final Service service;

  ServiceCard(this.service);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(widget.service.title),
      margin: EdgeInsets.symmetric(vertical: 10),
    );
  }
}
