import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

// class ScheduleAppointmentButton extends StatefulWidget {
//   final Future<void> Function() showDialog;
//   final bool enabled;

//   ScheduleAppointmentButton(this.showDialog, this.enabled);

//   @override
//   _ScheduleAppointmentButtonState createState() =>
//       _ScheduleAppointmentButtonState();
// }

// class _ScheduleAppointmentButtonState extends State<ScheduleAppointmentButton> {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => {widget.enabled ? widget.showDialog() : null},
//       child: Text('SCHEDULE APPOINTMENT'),
//       style: ButtonStyle(
//           backgroundColor:
//               MaterialStateProperty.resolveWith((states) => kColorAccent)),
//     );
//   }
// }

class ScheduleAppointmentButton extends StatelessWidget {
  final Future<void> Function() showDialog;
  final bool enabled;

  ScheduleAppointmentButton(this.showDialog, this.enabled);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {enabled ? showDialog() : null},
      child: Text('SCHEDULE APPOINTMENT'),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => enabled ? kColorAccent : Colors.grey)),
    );
  }
}
