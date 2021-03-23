import 'package:flutter/material.dart';

import '../../constants.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String? Function(String?)? validator;

  const MyTextField({Key? key, required this.label, required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        enableSuggestions: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: kColorPrimary)),
            labelText: label),
        // The validator receives the text that the user has entered.
        validator: validator,
      ),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    );
  }
}
