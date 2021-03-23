import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/button_color.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const SubmitButton(
      {Key? key,
      required GlobalKey<FormState> formKey,
      required this.text,
      required this.onPressed})
      : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: ButtonColor(),
            padding: MaterialStateProperty.resolveWith((states) =>
                EdgeInsets.symmetric(horizontal: 50, vertical: 12))),
        onPressed: onPressed,
        child: Text(text),
      ),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    );
  }
}
