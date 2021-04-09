import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';

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
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    backCallBack();
                  }),
              Expanded(
                child: Center(
                  child: Container(
                    alignment: Alignment.topCenter,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.grey.shade600, width: 1.5)),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://ui-avatars.com/api/?name=$firstName+$lastName'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title + " " + firstName + " " + lastName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Text(
                        summary,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 7),
                              child: Icon(Icons.phone, size: 15)),
                          Text(
                            phone,
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: ElevatedButton(
                                onPressed: () => {},
                                child: Text("CALL"),
                                style: ButtonStyle(
                                  visualDensity: VisualDensity.compact,
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => kColorAccent),
                                )),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 7),
                              child: Icon(Icons.email, size: 15)),
                          Text(
                            email,
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 7),
                                child: Icon(Icons.location_on, size: 15)),
                            Text(
                              address,
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
