import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:spinner_input/spinner_input.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

class ServicePreviewCard extends StatefulWidget {
  final VetService service;
  final void Function(double, int, int) registerTotal;
  final int index;

  ServicePreviewCard(this.service, this.registerTotal, this.index);

  @override
  _ServicePreviewCardState createState() => _ServicePreviewCardState();
}

class _ServicePreviewCardState extends State<ServicePreviewCard> {
  late double total;
  double units = 1.toDouble();
  Key serciveCardKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Card(
      key: serciveCardKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [buildTitile(), buildCostRow()],
        ),
      ),
    );
  }

  Container buildCostRow() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(
            children: [
              Container(
                child: buildSpinner(),
              ),
              Text('${widget.service.unit}s')
            ],
          )),
          Text(
            'Kshs ${total.toStringAsFixed(2)}',
            style: TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Container buildSpinner() => Container(
        margin: EdgeInsets.only(right: 5),
        child: SpinnerInput(
          spinnerValue: units,
          onChange: (newValue) {
            setState(() {
              updateUnits(newValue);
            });
          },
          middleNumberStyle: TextStyle(fontSize: 14),
          plusButton: SpinnerButtonStyle(
              color: kColorPrimary,
              height: 16,
              width: 16,
              child: Icon(
                Icons.add,
                size: 15,
              )),
          minusButton: SpinnerButtonStyle(
              color: kColorPrimary,
              height: 16,
              width: 16,
              child: Icon(
                Icons.remove,
                size: 15,
              )),
        ),
      );

  Container buildTitile() => Container(
      child: Text(widget.service.title,
          style: TextStyle(fontWeight: FontWeight.w600)));

  @override
  void initState() {
    super.initState();
    total = widget.service.costPerUnit;
    //widget.registerTotal(total, widget.index);
  }

  void updateUnits(double newValue) {
    setState(() {
      units = newValue;
      total = newValue.toDouble() * widget.service.costPerUnit;
      widget.registerTotal(total, units.toInt(), widget.index);
    });
  }
}
