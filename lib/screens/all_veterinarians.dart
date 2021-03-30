import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:vet_flutter/widgets/all_vets/all_vets_header.dart';
import 'package:vet_flutter/widgets/all_vets/vets_list.dart';

class AllVeterinarians extends StatelessWidget {
  final List<Veterinary> vets;

  AllVeterinarians(this.vets);

  @override
  Widget build(BuildContext context) {
    GlobalKey<VeterinaryListState> vetListKey = GlobalKey();
    VeterinaryList vetsList = VeterinaryList(vets, vetListKey);

    void triggerSearch(String query) {
      vetListKey.currentState!.filterVets(query);
      print('search!!');
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
}
