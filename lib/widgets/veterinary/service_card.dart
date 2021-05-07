import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

class ServiceCard extends StatelessWidget {
  final VetService service;
  final void Function(VetService) addService;
  final void Function(VetService) removeService;
  final Key key;

  ServiceCard(
    this.key,
    this.service,
    this.addService,
    this.removeService,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      //key: serviceCardKey,
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
                    service.title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  CheckMark(
                    addService: addService,
                    removeService: removeService,
                    service: service,
                  )
                ],
              ),
              Container(
                child: Text(service.description),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Kshs  ${service.costPerUnit.toStringAsFixed(2)} per  ${service.unit}',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 15)),
    );
  }
}

class CheckMark extends StatefulWidget {
  final void Function(VetService) addService;
  final void Function(VetService) removeService;
  final VetService service;

  const CheckMark(
      {Key? key,
      required this.addService,
      required this.removeService,
      required this.service})
      : super(key: key);

  @override
  _CheckMarkState createState() => _CheckMarkState();
}

class _CheckMarkState extends State<CheckMark> {
  late bool isChecked;
  late Color checkColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: checkUnckeck,
        icon: Icon(
          Icons.check_circle,
          color: checkColor,
          size: 20,
        ));
  }

  void checkUnckeck() {
    setState(() {
      this.isChecked = !isChecked;

      checkColor = isChecked ? kColorPrimary : Colors.grey;

      if (isChecked) {
        widget.addService(widget.service);
      } else {
        widget.removeService(widget.service);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    checkColor = Colors.grey;
    isChecked = false;
  }
}
