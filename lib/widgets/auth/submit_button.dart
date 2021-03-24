import 'package:flutter/material.dart';
import 'package:vet_flutter/screens/discover/discover.dart';
import 'package:vet_flutter/widgets/general/button_color.dart';

class SubmitButton extends StatelessWidget {
  final String text;

  final GlobalKey<FormState> formKey;

  const SubmitButton({
    Key? key,
    required this.formKey,
    required this.text,
  }) : super(key: key);

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
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Processing Data')));

            // Go to new route
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Discover()));
          }
        },
        child: Text(text),
      ),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    );
  }
}
