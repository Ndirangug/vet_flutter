import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:vet_flutter/screens/discover/discover.dart';
import 'package:vet_flutter/widgets/general/app_bar_button.dart';
import 'package:vet_flutter/widgets/general/search_box.dart';

class AllVeterinarians extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(flex: 4, child: buildSearchInputSection(context)),
            Expanded(flex: 5, child: buildVetsList()),
          ],
        ),
      ),
    );
  }

  Container buildSearchInputSection(BuildContext context) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Svg('assets/images/elipse_green.svg'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter)),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
                child: Row(
                  children: [
                    buildAppBarButton(
                        Icons.arrow_back,
                        () => {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Discover()))
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
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchBox(
                    label: 'Search veterinary',
                    validator: (value) => null,
                    searchIconColor: Colors.white,
                  ))
            ],
          ),
        ),
      );

  Container buildVetsList() => Container();
}
