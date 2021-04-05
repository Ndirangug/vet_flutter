import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_appointment_dialog.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_appointment_button.dart';
import 'package:vet_flutter/widgets/veterinary/service_card.dart';

class VeterinaryDetails extends StatelessWidget {
  final List<VetService> services;
  final List<VetService> selectedServices = [];
  final GlobalKey<ScheduleAppointmentButtonState> scheduleButtonKey =
      GlobalKey<ScheduleAppointmentButtonState>();

  VeterinaryDetails(this.services);

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
                itemCount: services.length,
                itemBuilder: (BuildContext context, int index) => ServiceCard(
                    UniqueKey(), services[index], addService, removeService)),
          ),
          ScheduleAppointmentButton(
            _showMyDialog,
            key: scheduleButtonKey,
          )
        ],
      ),
    );
  }

  void addService(VetService service) {
    selectedServices.add(service);
    updateSheduledButton();
    print(selectedServices);
  }

  void removeService(VetService service) {
    selectedServices.remove(service);
    updateSheduledButton();
    print(selectedServices);
  }

  void updateSheduledButton() {
    scheduleButtonKey.currentState!.updateEnabled(selectedServices.length > 0);
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return ScheduleAppointmentDialog(selectedServices);
      },
    );
  }
}
