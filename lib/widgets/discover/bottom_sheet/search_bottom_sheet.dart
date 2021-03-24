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
      height: 220,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              children: [
                buildTitleText(),
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

  Container buildTitleText() {
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
