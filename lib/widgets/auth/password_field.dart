import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

class PasswordField extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;

  const PasswordField({Key? key, required this.label, required this.validator})
      : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidePassword = true;
  Widget passwordIcon = Icon(Icons.visibility_outlined);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: hidePassword,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: kColorPrimary)),
            labelText: widget.label,
            suffixIcon: IconButton(
              icon: passwordIcon,
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                  passwordIcon = hidePassword
                      ? Icon(Icons.visibility_outlined)
                      : Icon(Icons.visibility_off_outlined);
                });
              },
            )),
        // The validator receives the text that the user has entered.
        validator: widget.validator,
      ),
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    );
  }
}
