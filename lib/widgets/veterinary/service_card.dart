import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

class ServiceCard extends StatefulWidget {
  final VetService service;
  final void Function(VetService) addService;
  final void Function(VetService) removeService;
  final Key key;

  const ServiceCard(
    this.key,
    this.service,
    this.addService,
    this.removeService,
  );

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  Color checkColor = Colors.grey;
  bool isChecked = false;
  Key serviceCardKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Card(
      key: serviceCardKey,
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.service.title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  IconButton(
                      onPressed: checkUnckeck,
                      icon: Icon(
                        Icons.check_circle,
                        color: checkColor,
                        size: 20,
                      ))
                ],
              ),
              Container(
                child: Text(widget.service.description),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Kshs  ${widget.service.costPerUnit} per  ${widget.service.unit}',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 15)),
    );
  }

  checkUnckeck() {
    setState(() {
      isChecked = !isChecked;
      checkColor = isChecked ? kColorPrimary : Colors.grey;

      if (isChecked) {
        widget.addService(widget.service);
      } else {
        widget.removeService(widget.service);
      }

      print(isChecked);
      print(checkColor);
      print('gery ${Colors.grey}');
      print('primary $kColorPrimary');
    });
  }
}
