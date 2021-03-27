import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:flutter_spinbox/material.dart'; // or flutter_spinbox.dart for both

class ServicePreviewCard extends StatefulWidget {
  final Service service;

  ServicePreviewCard(this.service);

  @override
  _ServicePreviewCardState createState() => _ServicePreviewCardState();
}

class _ServicePreviewCardState extends State<ServicePreviewCard> {
  late double total;
  double units = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.service.title),
          Row(
            children: [
              Container(
                  child: Row(
                children: [
                  Container(
                    child: SpinBox(
                      min: 1,
                      max: 10000,
                      value: 50,
                      onChanged: (value) => updateUnits(value),
                    ),
                  ),
                  Text(widget.service.unit)
                ],
              )),
              Text('Kshs $total')
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    total = widget.service.costPerUnit;
  }

  void updateUnits(double newValue) {
    setState(() {
      units = newValue;
      total = newValue.toDouble() * widget.service.costPerUnit;
    });
  }
}
