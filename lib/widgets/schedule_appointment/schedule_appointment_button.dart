import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

class ScheduleAppointmentButton extends StatefulWidget {
  final Future<void> Function(BuildContext context) showDialog;

  ScheduleAppointmentButton(this.showDialog, {required Key key})
      : super(key: key);

  @override
  ScheduleAppointmentButtonState createState() =>
      ScheduleAppointmentButtonState();
}

class ScheduleAppointmentButtonState extends State<ScheduleAppointmentButton> {
  late bool enabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {enabled ? widget.showDialog(context) : null},
      child: Text('SCHEDULE APPOINTMENT'),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => enabled ? kColorAccent : Colors.grey)),
    );
  }

  @override
  void initState() {
    super.initState();
    enabled = false;
  }

  void updateEnabled(bool isEnabled) {
    setState(() {
      enabled = isEnabled;
    });
  }
}
