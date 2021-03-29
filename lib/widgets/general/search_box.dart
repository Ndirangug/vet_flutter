import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

class SearchBox extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final Color searchIconColor;

  const SearchBox(
      {Key? key,
      required this.label,
      required this.validator,
      required this.searchIconColor})
      : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
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
                //TODO:Search
              },
            )),
        // The validator receives the text that the user has entered.
        validator: widget.validator,
      ),
      margin: EdgeInsets.only(top: 10),
    );
  }
}
