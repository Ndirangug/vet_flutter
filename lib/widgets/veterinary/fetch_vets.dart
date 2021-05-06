import 'package:vet_flutter/data/fetch_data.dart';
import 'package:vet_flutter/generated/service.pb.dart';

void fetchVets(
    {LocationRequest? locationRequest,
    VetRequest? vetRequest,
    required void Function(List<Veterinary>) onComplete}) {
  print("in fetch vets");
  if (locationRequest != null) {
    ApiClient.fetchVeterinariesInLocation(locationRequest).then(onComplete);
  } else {
    ApiClient.allVets(vetRequest!).then(onComplete);
  }
}
