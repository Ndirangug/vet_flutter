import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/discover/bottom_sheet/search_bottom_sheet.dart';
import 'package:vet_flutter/widgets/discover/map/maps_view.dart';
import 'package:vet_flutter/widgets/veterinary/vet_summary.dart';
import 'package:vet_flutter/widgets/veterinary/veterinary_details.dart';

class BottomSheetView extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Veterinary? vet;

  BottomSheetView(this.scaffoldKey, this.vet);

  @override
  _BottomSheetViewState createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  double height = 180;
  late Widget header;
  late Widget expandableContent;
  late Veterinary vet;

  GlobalKey<MapsViewState> mapsKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpandableBottomSheet(
        persistentHeader: header,
        expandableContent: expandableContent,
        background: MapsView(openVeterinryIno, key: mapsKey),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.vet != null) {
      openVeterinryIno(widget.vet!);
    } else {
      showSearch();
    }
  }

  void openVeterinryIno(Veterinary veterinary) {
    setState(() {
      vet = veterinary;
      header = buildSummary();
      expandableContent = buildVetDetails();
    });
  }

  VeterinarySummary buildSummary() {
    return VeterinarySummary(vet.title, vet.firstName, vet.lastName, vet.email,
        vet.phone, vet.address.address, vet.summary, showSearch);
  }

  VeterinaryDetails buildVetDetails() {
    return VeterinaryDetails(vet);
  }

  void showSearch() {
    setState(() {
      header = SearchBottomSheet();
      expandableContent = Container();
    });
  }
}
