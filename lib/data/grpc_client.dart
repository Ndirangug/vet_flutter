import 'package:grpc/grpc.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

class GrpcClientSingleton {
  late ClientChannel clientChannel;
  late VetsBackendClient client;

  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    this.clientChannel = ClientChannel(
        "192.168.43.86", // Your IP here, localhost might not work.
        port: 50051,
        options: const ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));

    this.client = VetsBackendClient(this.clientChannel);
  }
}
