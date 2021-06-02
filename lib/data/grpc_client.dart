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
    //Map<String, String> envVars = Platform.environment;

    this.clientChannel = ClientChannel(
        "vet-backend-u6wijjyqaa-uc.a.run.app", // Your IP here, localhost might not work.
        port: 443,
        // envVars['GRPC_HOST']!,
        // port: int.parse(envVars['GRPC_PORT']!),
        options: const ChannelOptions(
          //TODO: Change to secure with server certificates
          credentials: ChannelCredentials.secure(),
          idleTimeout: Duration(minutes: 2),
        ));

    this.client = VetsBackendClient(this.clientChannel);
  }
}
