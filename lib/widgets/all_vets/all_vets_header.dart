import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:vet_flutter/screens/discover/discover.dart';
import 'package:vet_flutter/widgets/general/app_bar_button.dart';

Container buildVetSearchHeader(
        BuildContext context, void Function(String) search) =>
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wide_ellipse_green3.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter)),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            buildTitleRow(context),
            //buildSearch(search)
          ],
        ),
      ),
    );

Container buildTitleRow(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 1),
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
            'All Veterinarians',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    ),
  );
}

// Container buildSearch(void Function(String) search) {
//   return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       child: SearchBox(
//         label: 'Search veterinary',
//         validator: (value) => null,
//         searchIconColor: Colors.white,
//         onPressed: search,
//       ));
// }
