import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';
import 'package:vet_flutter/widgets/all_vets/vet_card.dart';

class VeterinaryList extends StatefulWidget {
  final List<Veterinary> vets;

  final GlobalKey<VeterinaryListState> key;

  VeterinaryList(this.vets, this.key);

  @override
  VeterinaryListState createState() => VeterinaryListState();
}

class VeterinaryListState extends State<VeterinaryList> {
  late List<Veterinary> filteredVets;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.key,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: filteredVets.length,
          itemBuilder: (context, index) => VeterinaryCard(filteredVets[index])),
    );
  }

  @override
  void initState() {
    super.initState();
    filteredVets = widget.vets;
  }

  filterVets(String query) {
    setState(() {
      filteredVets = filteredVets.takeWhile((vet) {
        String fullName = '${vet.title} ${vet.firstName} ${vet.lastName}';
        return fullName.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }
}
