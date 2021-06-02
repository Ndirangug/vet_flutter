import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/all_vets/all_vets_header.dart';
import 'package:vet_flutter/widgets/all_vets/vets_list.dart';
import 'package:vet_flutter/widgets/general/progress_dialog.dart';
import 'package:vet_flutter/widgets/veterinary/fetch_vets.dart';

class AllVeterinarians extends StatefulWidget {
  @override
  _AllVeterinariansState createState() => _AllVeterinariansState();
}

class _AllVeterinariansState extends State<AllVeterinarians> {
  List<Veterinary> vets = [];

  @override
  Widget build(BuildContext context) {
    GlobalKey<VeterinaryListState> vetListKey = GlobalKey();
    VeterinaryList vetsList = VeterinaryList(vets, vetListKey);

    void triggerSearch(String query) {
      vetListKey.currentState!.filterVets(query);
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                flex: 4, child: buildVetSearchHeader(context, triggerSearch)),
            Expanded(flex: 5, child: vetsList),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    //showProgressDialog(context);
    fetchVets(
        vetRequest: VetRequest(),
        onComplete: (vets) {
          //Navigator.of(context).pop();
          print("on complete all vets");
          setState(() {
            this.vets = vets;
          });
        });
  }
}
