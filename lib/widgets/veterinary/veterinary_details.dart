import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_appointment_dialog.dart';
import 'package:vet_flutter/widgets/veterinary/service_card.dart';

class VeterinaryDetails extends StatefulWidget {
  final List<Service> services;

  VeterinaryDetails(this.services);

  @override
  _VeterinaryDetailsState createState() => _VeterinaryDetailsState();
}

class _VeterinaryDetailsState extends State<VeterinaryDetails> {
  List<Service> selectedServices = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 400,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Services",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                itemCount: widget.services.length,
                itemBuilder: (BuildContext context, int index) => ServiceCard(
                    widget.services[index], addService, removeService)),
          ),
          ElevatedButton(
            onPressed: () => {_showMyDialog()},
            child: Text('SCHEDULE APPOINTMENT'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => kColorAccent)),
          )
        ],
      ),
    );
  }

  addService(Service service) {
    selectedServices.add(service);
  }

  removeService(Service service) {
    selectedServices.remove(service);
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return ScheduleAppointmentDialog();
      },
    );
  }
}
