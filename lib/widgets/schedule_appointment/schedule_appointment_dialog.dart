import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:vet_flutter/widgets/schedule_appointment/schedule_form.dart';

class ScheduleAppointmentDialog extends StatefulWidget {
  final List<Service> services;

  ScheduleAppointmentDialog(this.services);

  @override
  _ScheduleAppointmentDialogState createState() =>
      _ScheduleAppointmentDialogState();
}

class _ScheduleAppointmentDialogState extends State<ScheduleAppointmentDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 3,
      actions: buildActions(context),
      title: buildTitle(),
      content: ScheduleAppointmentForm(widget.services),
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
          onPressed: () => {},
          child: Text('PROCEED TO PAY', style: TextStyle(color: kColorPrimary)),
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.blueGrey.shade100)))
    ];
  }
}
