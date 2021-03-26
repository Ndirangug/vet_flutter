import 'package:flutter/material.dart';
import 'package:vet_flutter/models/veterinary.dart';

class MapsView extends StatelessWidget {
  final void Function(Veterinary) openVetInfo;

  const MapsView(this.openVetInfo);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              openVetInfo(getVetInfo(0));
            },
            child: Text('vet details 1'),
          ),
          ElevatedButton(
            onPressed: () {
              openVetInfo(getVetInfo(1));
            },
            child: Text('vet details  2'),
          ),
        ],
      ),
    );
  }

  Veterinary getVetInfo(int index) {
    return getVets()[index];
  }
}
