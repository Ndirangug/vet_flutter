import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/screens/discover/discover.dart';
import 'package:vet_flutter/widgets/general/app_bar_button.dart';
import 'package:vet_flutter/widgets/location/location_services.dart';

class ViewProfile extends StatefulWidget {
  final Farmer farmer;

  ViewProfile(this.farmer);

  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Svg('assets/images/elipse_green.svg'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter)),
          ),
          SafeArea(child: buildTitleRow(context)),
          Container(
            margin: EdgeInsets.only(top: 200),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              radius: 75,
              backgroundImage: NetworkImage(
                  'https://ui-avatars.com/api/?name=${widget.farmer.firstName}+${widget.farmer.lastName}'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 370),
            child: Column(
              children: [
                buildProfileItem(
                    '${widget.farmer.firstName} ${widget.farmer.lastName}'),
                buildProfileItem(widget.farmer.phone),
                buildProfileItem(widget.farmer.email),
                buildProfileItem(address),
              ],
            ),
          )
        ],
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    getAddressFromCoordinates(widget.farmer.address).then((placemark) {
      setState(() {
        address = "${placemark.name!} ${placemark.street}";
      });
    });
  }

  Container buildTitleRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
      child: Row(
        children: [
          buildAppBarButton(
              Icons.arrow_back,
              () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Discover(null)))
                  },
              [20, 30]),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'View Profile',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  buildProfileItem(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
