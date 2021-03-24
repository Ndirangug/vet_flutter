import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/discover/discover_app_bar.dart';
import 'package:vet_flutter/widgets/discover/bottom_sheet/search_bottom_sheet.dart';
import 'package:vet_flutter/widgets/general/navigation_drawer/navigation_drawer.dart';

class Discover extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: buildAppBar(_drawerKey),
      body: Container(
        child: Text(
          'map',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomSheet: SearchBottomSheet(),
      drawer: buildDrawer(context),
    );
  }
}
