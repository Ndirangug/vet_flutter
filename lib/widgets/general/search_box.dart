import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

class SearchBox extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final void Function(String) onPressed;
  final Color searchIconColor;

  const SearchBox(
      {Key? key,
      required this.label,
      required this.validator,
      required this.searchIconColor,
      required this.onPressed})
      : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onChanged: (text) {
          value = text;
          widget.onPressed(value);
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: kColorPrimary)),
            labelText: widget.label,
            suffixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: widget.searchIconColor,
              ),
              onPressed: () {
                widget.onPressed(value);
              },
            )),
        // The validator receives the text that the user has entered.
        validator: widget.validator,
      ),
      margin: EdgeInsets.only(top: 10),
    );
  }
}
