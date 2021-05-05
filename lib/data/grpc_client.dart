import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:vet_flutter/generated/service.pbgrpc.dart';

class GrpcClientSingleton {
  late ClientChannel clientChannel;
  late VetsBackendClient client;

  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  GrpcClientSingleton._internal() {
    Map<String, String> envVars = Platform.environment;
    print(envVars);

    this.clientChannel = ClientChannel(
        "vet-backend-fybfguvuua-uc.a.run.app", // Your IP here, localhost might not work.
        port: 443,
        // envVars['GRPC_HOST']!,
        // port: int.parse(envVars['GRPC_PORT']!),
        options: const ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));

    this.client = VetsBackendClient(this.clientChannel);
  }
}
