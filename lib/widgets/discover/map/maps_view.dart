import 'package:flutter/material.dart';

class MapsView extends StatelessWidget {
  final void Function() openVetInfo;

  const MapsView(this.openVetInfo);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          openVetInfo();
        },
        child: Text('vet details'),
      ),
    );
  }
}
