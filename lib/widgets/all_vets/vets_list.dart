import 'package:flutter/material.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';
import 'package:vet_flutter/widgets/all_vets/vet_card.dart';

class VeterinaryList extends StatefulWidget {
  final Future<List<Veterinary>> vets;

  final GlobalKey<VeterinaryListState> key;

  VeterinaryList(this.vets, this.key);

  @override
  VeterinaryListState createState() => VeterinaryListState();
}

class VeterinaryListState extends State<VeterinaryList> {
  List<Veterinary> filteredVets = [];

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

    widget.vets.then((value) {
      setState(() {
        filteredVets = value;
      });
    });
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
