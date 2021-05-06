import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/widgets/discover/map/maps_view.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';

class VeterinarySummary extends StatefulWidget {
  final void Function() backCallBack;
  final Veterinary vet;
  final GlobalKey<MapsViewState> mapsKey;

  VeterinarySummary(
      {required this.vet, required this.backCallBack, required this.mapsKey});

  @override
  _VeterinarySummaryState createState() => _VeterinarySummaryState();
}

class _VeterinarySummaryState extends State<VeterinarySummary> {
  String address = '';

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
                    widget.backCallBack();
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
                      'https://ui-avatars.com/api/?name=${widget.vet.firstName}+${widget.vet.lastName}'),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.vet.title +
                            " " +
                            widget.vet.firstName +
                            " " +
                            widget.vet.lastName,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Text(
                        widget.vet.summary,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 7),
                              child: Icon(Icons.phone, size: 15)),
                          Text(
                            widget.vet.phone,
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: ElevatedButton(
                                onPressed: () {
                                  _launchURL();
                                },
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
                            widget.vet.email,
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

  void _launchURL() async {
    Uri phoneUri = Uri(
      scheme: 'tel',
      path: widget.vet.phone,
    );

    await canLaunch(phoneUri.toString())
        ? await launch(phoneUri.toString())
        : throw 'Could not launch $phoneUri';
  }

  @override
  void initState() {
    super.initState();

    getAddressFromCoordinates(widget.vet.address).then((placemark) {
      setState(() {
        this.address = " ${placemark.name} ${placemark.street}";
      });

      widget.mapsKey.currentState!.repositionCamera(widget.vet.address);
    });
  }
}
