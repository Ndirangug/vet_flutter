import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:vet_flutter/widgets/auth/form_dropdown.dart';
import 'package:vet_flutter/widgets/schedule_appointment/service_preview_card.dart';

class ScheduleAppointmentForm extends StatefulWidget {
  final List<Service> services;

  ScheduleAppointmentForm(this.services);

  @override
  _ScheduleAppointmentFormState createState() =>
      _ScheduleAppointmentFormState();
}

class _ScheduleAppointmentFormState extends State<ScheduleAppointmentForm> {
  final _formKey = GlobalKey<FormState>();
  double total = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildDateTimePicker(),
          FormDropDownField(
              label: 'Place',
              initialValue: 'Home',
              options: ['Home', "Veterinary's Office"]),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Services'),
                Expanded(
                    child: Divider(
                  thickness: 3,
                  color: Colors.black,
                ))
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  shrinkWrap: true,
                  itemCount: widget.services.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ServicePreviewCard(widget.services[index]))),
          Text('Total: Kshs $total')
        ],
      ),
    );
  }

  buildDateTimePicker() {
    return DateTimePicker(
      type: DateTimePickerType.dateTime,
      dateMask: 'd MMM, yyyy',
      initialValue: DateTime.now().toString(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: Icon(Icons.event),
      dateLabelText: 'Date',
      timeLabelText: "Time",
      selectableDayPredicate: (date) {
        // Disable weekend days to select from the calendar
        if (date.weekday == 6 || date.weekday == 7) {
          return false;
        }

        return true;
      },
      onChanged: (val) => print(val),
      validator: (val) {
        print(val);
        return null;
      },
      onSaved: (val) => print(val),
    );
  }
}
