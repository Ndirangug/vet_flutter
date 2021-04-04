import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/discover/map/maps_view.dart';
import 'package:vet_flutter/widgets/veterinary/vet_summary.dart';
import 'package:vet_flutter/widgets/veterinary/veterinary_details.dart';

class VeterinaryInfo extends StatefulWidget {
  final Veterinary vet;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final void Function() backCallBack;
  final MapsView map;

  VeterinaryInfo(this.vet, this.scaffoldKey, this.backCallBack, this.map);

  @override
  _VeterinaryInfoState createState() => _VeterinaryInfoState();
}

class _VeterinaryInfoState extends State<VeterinaryInfo> {
  double height = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpandableBottomSheet(
        persistentHeader: buildHeader(context),
        expandableContent: buildExpandableContent(),
        background: widget.map,
      ),
    );
  }

  VeterinarySummary buildHeader(BuildContext context) {
    return VeterinarySummary(
        widget.vet.title,
        widget.vet.firstName,
        widget.vet.lastName,
        widget.vet.email,
        widget.vet.phone,
        widget.vet.address.address,
        widget.vet.summary,
        widget.backCallBack);
  }

  VeterinaryDetails buildExpandableContent() {
    return VeterinaryDetails(widget.vet.services);
  }
}
