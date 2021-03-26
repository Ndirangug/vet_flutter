import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

class ScheduleAppointmentDialog extends StatefulWidget {
  @override
  _ScheduleAppointmentDialogState createState() =>
      _ScheduleAppointmentDialogState();
}

class _ScheduleAppointmentDialogState extends State<ScheduleAppointmentDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 3,
      actions: [
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
            child:
                Text('PROCEED TO PAY', style: TextStyle(color: kColorPrimary)),
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.blueGrey.shade100)))
      ],
      title: Text(
        'Schedule Appointment',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('details'),
            ],
          ),
        ),
      ),
    );
  }
}
