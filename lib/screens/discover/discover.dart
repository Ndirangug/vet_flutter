import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:vet_flutter/widgets/discover/discover_app_bar.dart';
import 'package:vet_flutter/widgets/discover/bottom_sheet/search_bottom_sheet.dart';
import 'package:vet_flutter/widgets/discover/map/maps_view.dart';
import 'package:vet_flutter/widgets/general/navigation_drawer/navigation_drawer.dart';
import 'package:vet_flutter/widgets/veterinary/veterinary_info.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Widget bottomSheet = SearchBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(_scaffoldKey),
      body: buildMapsView(),
      bottomSheet: bottomSheet,
      drawer: buildDrawer(context),
    );
  }

  MapsView buildMapsView() => MapsView(openVeterinryIno);

  backToSearchBottomSheet() {
    setState(() {
      bottomSheet = SearchBottomSheet();
    });
  }

  openVeterinryIno() {
    setState(() {
      bottomSheet = VeterinaryInfo(
          getVets()[0], _scaffoldKey, backToSearchBottomSheet, buildMapsView());
    });
  }
}
