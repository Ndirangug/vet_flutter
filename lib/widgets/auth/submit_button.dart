import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/general/button_color.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final void Function() onClick;
  final GlobalKey<FormState> formKey;

  const SubmitButton(
      {Key? key,
      required this.formKey,
      required this.text,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: ButtonColor(),
            padding: MaterialStateProperty.resolveWith((states) =>
                EdgeInsets.symmetric(horizontal: 50, vertical: 12))),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // this is a hacky solution remove line to see effect
            formKey.currentState!.validate();
            onClick();
          }
        },
        child: Text(text),
      ),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    );
  }
}
