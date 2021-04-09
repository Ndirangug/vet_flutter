import 'package:flutter/material.dart';

void showProgressDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return Center(child: CircularProgressIndicator());
    },
  );
}
