import 'package:flutter/material.dart';
import 'package:vet_flutter/widgets/discover/bottom_sheet/location_button.dart';

import '../../general/search_box.dart';

class SearchBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BottomSheet(
      onClosing: () => {},
      builder: (context) => buildLayout(size),
    );
  }

  Container buildLayout(Size size) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 205,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 5),
            color: Colors.white,
            child: Column(
              children: [
                buildTitle(),
                buildParagraph(),
                SearchBox(
                  label: "Search Anything",
                  validator: (value) => null,
                )
              ],
            ),
          ),
          buildLocationButton(),
        ],
      ),
    );
  }

  Container buildTitle() {
    return Container(
      alignment: AlignmentDirectional.topStart,
      child: Text(
        "What are you looking for?",
        style: TextStyle(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );
  }

  Container buildParagraph() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "Search a Veterinary Officer's name, a service e.g 'cow vaccination' or 'foot and mouth' or a location",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
    );
  }
}