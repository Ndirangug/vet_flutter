import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/general/app_bar_button.dart';

AppBar buildAppBar(GlobalKey<ScaffoldState> drawerKey) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Container(
      child: buildAppBarButton(
          Icons.menu, () => {drawerKey.currentState!.openDrawer()}, [35, 20]),
      margin: EdgeInsets.only(left: 18, top: 20),
    ),
  );
}
