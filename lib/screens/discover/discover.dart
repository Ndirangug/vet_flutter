import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/discover/discover_app_bar.dart';
import 'package:vet_flutter/widgets/general/navigation_drawer/navigation_drawer.dart';
import 'package:vet_flutter/widgets/veterinary/bottom_sheet_view.dart';

class Discover extends StatefulWidget {
  final Veterinary? vet;

  Discover(this.vet);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  // Farmer _farmer = Farmer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(_scaffoldKey),
      bottomSheet: BottomSheetView(_scaffoldKey, widget.vet),
      drawer: NavDrawer(),
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   ApiClient.getProfile(
  //           FarmerRequest(email: FirebaseAuth.instance.currentUser!.email))
  //       .then((farmer) {
  //     setState(() {
  //       this._farmer = farmer;
  //     });
  //   });
  // }
}
