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

  static Future<List<Veterinary>> allVets(VetRequest request) async {
    return await GrpcClientSingleton()
        .client
        .getVeterinarians(request)
        .toList();
  }
}
