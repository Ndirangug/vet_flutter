import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_appointment_dialog.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_appointment_button.dart';
import 'package:vet_flutter/widgets/veterinary/service_card.dart';

class VeterinaryDetails extends StatefulWidget {
  final List<VetService> services;

  VeterinaryDetails(this.services);

  @override
  _VeterinaryDetailsState createState() => _VeterinaryDetailsState();
}

class _VeterinaryDetailsState extends State<VeterinaryDetails> {
  List<VetService> selectedServices = [];
  bool sheduleButtonIsEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 400,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "Services",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                itemCount: widget.services.length,
                itemBuilder: (BuildContext context, int index) => ServiceCard(
                    UniqueKey(),
                    widget.services[index],
                    addService,
                    removeService)),
          ),
          ScheduleAppointmentButton(_showMyDialog, selectedServices.length > 0)
        ],
      ),
    );
  }

  void addService(VetService service) {
    setState(() {
      selectedServices.add(service);
      print(selectedServices);
    });
  }

  void removeService(VetService service) {
    setState(() {
      selectedServices.remove(service);
      print(selectedServices);
    });
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return ScheduleAppointmentDialog(selectedServices);
      },
    );
  }
}
