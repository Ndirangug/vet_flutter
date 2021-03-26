import 'package:flutter/material.dart';

class VeterinarySummary extends StatelessWidget {
  final void Function() backCallBack;

  final String address;

  final String email;

  final String summary;

  final String title;

  final String lastName;

  final String firstName;

  final String phone;

  VeterinarySummary(this.title, this.firstName, this.lastName, this.email,
      this.phone, this.address, this.summary, this.backCallBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    backCallBack();
                  }),
              Container(
                alignment: Alignment.topCenter,
                color: Colors.grey,
                height: 5,
              )
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              Column(
                children: [
                  Text(title + " " + firstName + " " + lastName),
                  Text(summary),
                  Row(
                    children: [
                      Text(phone),
                      ElevatedButton(onPressed: () => {}, child: Text("CALL"))
                    ],
                  ),
                  Text(email),
                  Text(address),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
