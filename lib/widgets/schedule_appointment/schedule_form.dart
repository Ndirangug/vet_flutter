import 'dart:async';

import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/google/protobuf/timestamp.pb.dart';
import 'package:vet_flutter/screens/auth/fetch_user.dart';
import 'package:vet_flutter/screens/pay/make_payment.dart';
import 'package:vet_flutter/widgets/auth/form_dropdown.dart';
import 'package:vet_flutter/widgets/schedule_appointment/service_preview_card.dart';

class ScheduleAppointmentForm extends StatefulWidget {
  final Veterinary vet;
  final List<VetService> selectedServices;

  ScheduleAppointmentForm(
      {required Key key, required this.vet, required this.selectedServices})
      : super(key: key);

  @override
  ScheduleAppointmentFormState createState() => ScheduleAppointmentFormState();
}

class ScheduleAppointmentFormState extends State<ScheduleAppointmentForm> {
  double grandTotal = 0;
  late List<double> totals = [];
  late List<VetServiceRequest> serviceRequests = [];
  late List<Map<String, dynamic>> selectedServicesMapList = [];

  late Farmer farmer;
  late Location location;
  late Timestamp timestamp;

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
            options: ['Home', "Veterinary's Office"],
            onChanged: (value) {
              if (value == 'Home') {
                location = farmer.address;
              } else {
                location = widget.vet.address;
              }
            },
          ),
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
            child: Container(
              width: double.maxFinite,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: widget.selectedServices.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ServicePreviewCard(widget.selectedServices[index],
                          registerTotal, index)),
            ),
          ),
          Text('Total: Kshs ${grandTotal.toStringAsFixed(2)}')
        ],
      ),
    );
  }

  buildDateTimePicker() {
    return DateTimePicker(
      type: DateTimePickerType.dateTime,
      dateMask: 'd MMM, yyyy',
      initialValue: isWeekend(DateTime.now())
          ? DateTime.now().add(Duration(days: 2)).toString()
          : DateTime.now().toString(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      icon: Icon(Icons.event),
      dateLabelText: 'Date',
      timeLabelText: "Time",
      selectableDayPredicate: (date) {
        // Disable weekend days to select from the calendar
        if (isWeekend(date)) {
          return false;
        }

        return true;
      },
      onChanged: (val) {
        DateTime dateTime = DateTime.tryParse(val)!;
        timestamp = Timestamp.fromDateTime(dateTime);
      },
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
    widget.selectedServices.forEach((service) {
      totals.add(service.costPerUnit);
      calculateGrandTotal();
      serviceRequests
          .add(VetServiceRequest(serviceId: service.serviceId, units: 1));
      selectedServicesMapList.add({"service": service.title, "units": 1, "unitCost": service.costPerUnit});
    });

    getCachedUser().then((fetchedUser) {
      new Timer(Duration(seconds: 2), () {
        setState(() {
          farmer = fetchedUser;
        });
      });
    });
  }

  void registerTotal(double total, int units, int index) {
    setState(() {
      this.totals[index] = total;
      calculateGrandTotal();
      serviceRequests[index].units = units;
      selectedServicesMapList[index]["units"] = units;
    });
  }

  void calculateGrandTotal() {
    this.grandTotal = (this.totals.reduce((a, b) => a + b));
  }

  void submitRequest(BuildContext context) {
    TreatmentSessionRequest sessionRequest = TreatmentSessionRequest(
        farmerId: farmer.farmerId,
        location: location,
        time: timestamp,
        veterinaryId: widget.vet.vetId,
        services: serviceRequests);

    ApiClient.scheduleSession(sessionRequest);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MakePaymentWebView(
              farmer: farmer,
              amount: grandTotal,
              time: timestamp,
              vet: widget.vet,
              serviceRequests: this.selectedServicesMapList,
            )));
  }

  bool isWeekend(DateTime date) {
    return date.weekday == 6 || date.weekday == 7;
  }
}
