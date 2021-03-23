import 'package:flutter/material.dart';

import '../../constants.dart';

class FormDropDownField extends StatefulWidget {
  final String label;

  final String initialValue;

  final List<String> options;

  const FormDropDownField(
      {Key? key,
      required this.label,
      required this.initialValue,
      required this.options})
      : super(key: key);

  @override
  _FormDropDownFieldState createState() => _FormDropDownFieldState();
}

class _FormDropDownFieldState extends State<FormDropDownField> {
  String dropdownValue = 'Farmer';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 18,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: kColorPrimary)),
            labelText: widget.label),
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    );
  }
}
