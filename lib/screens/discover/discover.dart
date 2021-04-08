import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  Farmer farmer = Farmer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(_scaffoldKey),
      bottomSheet: BottomSheetView(_scaffoldKey, widget.vet),
      drawer: buildDrawer(context, farmer),
    );
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      SharedPreferences.getInstance().then((prefs) {
        farmer = jsonDecode(prefs.getString("farmer")!);
      });
    });
  }
}
