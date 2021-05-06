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
  final GlobalKey<MapsViewState> mapsKey;

  VeterinaryInfo(this.vet, this.scaffoldKey, this.backCallBack, this.map, this.mapsKey);

  @override
  _VeterinaryInfoState createState() => _VeterinaryInfoState();
}

class _VeterinaryInfoState extends State<VeterinaryInfo> {
  double height = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpandableBottomSheet(
        persistentHeader: VeterinarySummary(
          vet: widget.vet,
          mapsKey: widget.mapsKey,
          backCallBack: widget.backCallBack,
        ),
        expandableContent: buildExpandableContent(),
        background: widget.map,
      ),
    );
  }

  VeterinaryDetails buildExpandableContent() {
    return VeterinaryDetails(widget.vet);
  }
}
