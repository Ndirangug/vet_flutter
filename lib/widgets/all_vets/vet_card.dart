import 'package:flutter/material.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/screens/discover/discover.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';

class VeterinaryCard extends StatefulWidget {
  final Veterinary veterinary;

  VeterinaryCard(this.veterinary);

  @override
  _VeterinaryCardState createState() => _VeterinaryCardState();
}

class _VeterinaryCardState extends State<VeterinaryCard> {
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      child: Card(
        elevation: 5,
        key: UniqueKey(),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.veterinary.title +
                    " " +
                    widget.veterinary.firstName +
                    " " +
                    widget.veterinary.lastName,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Text(
                widget.veterinary.summary,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 7, top: 20, bottom: 5),
                      child: Icon(Icons.phone, size: 15)),
                  Text(
                    widget.veterinary.phone,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 7, top: 5, bottom: 5),
                      child: Icon(Icons.email, size: 15)),
                  Text(
                    widget.veterinary.email,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 7, top: 5, bottom: 5),
                        child: Icon(Icons.location_on, size: 15)),
                    Text(
                      this.address,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                //textStyle: TextStyle(color: MaterialStateProperty.resolveWith((states) => kColorAccent))
                child: TextButton(
                  child: Text('SEE DETAILS'),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateColor.resolveWith(
                          (states) => kColorAccent)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Discover(widget.veterinary)));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    getAddressFromCoordinates(widget.veterinary.address).then((placemark) {
      setState(() {
        this.address = " ${placemark.name} ${placemark.street}";
      });
    });
  }
}
