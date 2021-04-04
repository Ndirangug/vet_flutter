import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/auth/form_dropdown.dart';
import 'package:vet_flutter/widgets/schedule_appointment/service_preview_card.dart';

class ScheduleAppointmentForm extends StatefulWidget {
  final List<VetService> services;

  ScheduleAppointmentForm(this.services);

  @override
  _ScheduleAppointmentFormState createState() =>
      _ScheduleAppointmentFormState();
}

class _ScheduleAppointmentFormState extends State<ScheduleAppointmentForm> {
  double grandTotal = 0;
  late List<double> totals = [];

  @override
  Widget build(BuildContext context) {
    return Form(
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
                  indent: 10,
                  endIndent: 5,
                  thickness: 1,
                  color: Colors.black,
                ))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: widget.services.length,
                itemBuilder: (BuildContext context, int index) =>
                    ServicePreviewCard(
                        widget.services[index], registerTotal, index)),
          ),
          Text('Total: Kshs $grandTotal')
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

  @override
  void initState() {
    super.initState();
    widget.services.forEach((service) {
      totals.add(service.costPerUnit);
      calculateGrandTotal();
    });
  }

  void registerTotal(double total, int index) {
    setState(() {
      this.totals[index] = total;
      calculateGrandTotal();
    });
  }

  void calculateGrandTotal() {
    this.grandTotal = (this.totals.reduce((a, b) => a + b));
  }
}
