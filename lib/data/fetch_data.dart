import 'package:vet_flutter/data/grpc_client.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

class ApiClient {
  static Future<TestHelloResponse> testello(TestHelloRequest request) async {
    return await GrpcClientSingleton().client.testHello(request);
  }

  static Future<List<Veterinary>> fetchVeterinariesInLocation(
      LocationRequest request) async {
    return GrpcClientSingleton()
        .client
        .getVeterinariansInLocation(request)
        .toList();
  }

  static Future<List<Veterinary>> allVets(VetRequest request) {
    return GrpcClientSingleton().client.getVeterinarians(request).toList();
  }

  static Future<Farmer> getProfile(FarmerRequest request) {
    return GrpcClientSingleton().client.getFarmer(request);
  }

  static Future<TreatmentSession> scheduleSession(
      TreatmentSessionRequest request) {
    return GrpcClientSingleton().client.scheduleSession(request);
  }

  static Future<Farmer> createFarmer(Farmer request) {
    return GrpcClientSingleton().client.createFarmer(request);
  }
}
