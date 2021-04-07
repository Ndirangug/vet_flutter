import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_form.dart';

class ScheduleAppointmentDialog extends StatefulWidget {
  final Veterinary vet;

  final List<VetService> selectedServices;

  ScheduleAppointmentDialog(
      {required this.vet, required this.selectedServices});

  @override
  _ScheduleAppointmentDialogState createState() =>
      _ScheduleAppointmentDialogState();
}

class _ScheduleAppointmentDialogState extends State<ScheduleAppointmentDialog> {
  GlobalKey<ScheduleAppointmentFormState> scheduleAppointmentFormKey =
      GlobalKey<ScheduleAppointmentFormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 3,
      actions: buildActions(context),
      title: buildTitle(),
      content: ScheduleAppointmentForm(
        key: scheduleAppointmentFormKey,
        vet: widget.vet,
        selectedServices: widget.selectedServices,
      ),
    );
  }

  Text buildTitle() {
    return Text(
      'Schedule Appointment',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    );
  }

  List<Widget> buildActions(BuildContext context) {
    return [
      TextButton(
          onPressed: () => {Navigator.of(context).pop()},
          child: Text(
            'CANCEL',
            style: TextStyle(color: Colors.red),
          ),
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.red.shade50))),
      TextButton(
          onPressed: () =>
              {scheduleAppointmentFormKey.currentState!.submitRequest(context)},
          child: Text('PROCEED TO PAY', style: TextStyle(color: kColorPrimary)),
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.blueGrey.shade100)))
    ];
  }
}
