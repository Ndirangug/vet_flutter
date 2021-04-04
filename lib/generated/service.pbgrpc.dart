///
//  Generated code. Do not modify.
//  source: lib/generated/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $0;
export 'service.pb.dart';

class VetsBackendClient extends $grpc.Client {
  static final _$testHello =
      $grpc.ClientMethod<$0.TestHelloRequest, $0.TestHelloResponse>(
          '/vet_backend.VetsBackend/TestHello',
          ($0.TestHelloRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TestHelloResponse.fromBuffer(value));
  static final _$getVeterinarians =
      $grpc.ClientMethod<$0.VetRequest, $0.Veterinary>(
          '/vet_backend.VetsBackend/GetVeterinarians',
          ($0.VetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value));
  static final _$getVeterinariansInLocation =
      $grpc.ClientMethod<$0.LocationRequest, $0.Veterinary>(
          '/vet_backend.VetsBackend/GetVeterinariansInLocation',
          ($0.LocationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value));
  static final _$getVeterinarian =
      $grpc.ClientMethod<$0.VetRequest, $0.Veterinary>(
          '/vet_backend.VetsBackend/GetVeterinarian',
          ($0.VetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value));
  static final _$updateVeterinarian =
      $grpc.ClientMethod<$0.Veterinary, $0.Veterinary>(
          '/vet_backend.VetsBackend/UpdateVeterinarian',
          ($0.Veterinary value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value));
  static final _$updateFarmer = $grpc.ClientMethod<$0.Farmer, $0.Farmer>(
      '/vet_backend.VetsBackend/UpdateFarmer',
      ($0.Farmer value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Farmer.fromBuffer(value));
  static final _$createVeterian =
      $grpc.ClientMethod<$0.Veterinary, $0.Veterinary>(
          '/vet_backend.VetsBackend/CreateVeterian',
          ($0.Veterinary value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value));
  static final _$createFarmer = $grpc.ClientMethod<$0.Farmer, $0.Farmer>(
      '/vet_backend.VetsBackend/CreateFarmer',
      ($0.Farmer value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Farmer.fromBuffer(value));
  static final _$getFarmer = $grpc.ClientMethod<$0.FarmerRequest, $0.Farmer>(
      '/vet_backend.VetsBackend/GetFarmer',
      ($0.FarmerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Farmer.fromBuffer(value));
  static final _$scheduleSession =
      $grpc.ClientMethod<$0.TreatmentSessionRequest, $0.TreatmentSession>(
          '/vet_backend.VetsBackend/ScheduleSession',
          ($0.TreatmentSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TreatmentSession.fromBuffer(value));

  VetsBackendClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TestHelloResponse> testHello(
      $0.TestHelloRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$testHello, request, options: options);
  }

  $grpc.ResponseStream<$0.Veterinary> getVeterinarians($0.VetRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getVeterinarians, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Veterinary> getVeterinariansInLocation(
      $0.LocationRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getVeterinariansInLocation, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Veterinary> getVeterinarian($0.VetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVeterinarian, request, options: options);
  }

  $grpc.ResponseFuture<$0.Veterinary> updateVeterinarian($0.Veterinary request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateVeterinarian, request, options: options);
  }

  $grpc.ResponseFuture<$0.Farmer> updateFarmer($0.Farmer request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateFarmer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Veterinary> createVeterian($0.Veterinary request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createVeterian, request, options: options);
  }

  $grpc.ResponseFuture<$0.Farmer> createFarmer($0.Farmer request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createFarmer, request, options: options);
  }

  $grpc.ResponseFuture<$0.Farmer> getFarmer($0.FarmerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFarmer, request, options: options);
  }

  $grpc.ResponseFuture<$0.TreatmentSession> scheduleSession(
      $0.TreatmentSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$scheduleSession, request, options: options);
  }
}

abstract class VetsBackendServiceBase extends $grpc.Service {
  $core.String get $name => 'vet_backend.VetsBackend';

  VetsBackendServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TestHelloRequest, $0.TestHelloResponse>(
        'TestHello',
        testHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TestHelloRequest.fromBuffer(value),
        ($0.TestHelloResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VetRequest, $0.Veterinary>(
        'GetVeterinarians',
        getVeterinarians_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.VetRequest.fromBuffer(value),
        ($0.Veterinary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LocationRequest, $0.Veterinary>(
        'GetVeterinariansInLocation',
        getVeterinariansInLocation_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.LocationRequest.fromBuffer(value),
        ($0.Veterinary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VetRequest, $0.Veterinary>(
        'GetVeterinarian',
        getVeterinarian_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VetRequest.fromBuffer(value),
        ($0.Veterinary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Veterinary, $0.Veterinary>(
        'UpdateVeterinarian',
        updateVeterinarian_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value),
        ($0.Veterinary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Farmer, $0.Farmer>(
        'UpdateFarmer',
        updateFarmer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Farmer.fromBuffer(value),
        ($0.Farmer value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Veterinary, $0.Veterinary>(
        'CreateVeterian',
        createVeterian_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Veterinary.fromBuffer(value),
        ($0.Veterinary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Farmer, $0.Farmer>(
        'CreateFarmer',
        createFarmer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Farmer.fromBuffer(value),
        ($0.Farmer value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FarmerRequest, $0.Farmer>(
        'GetFarmer',
        getFarmer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FarmerRequest.fromBuffer(value),
        ($0.Farmer value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TreatmentSessionRequest, $0.TreatmentSession>(
            'ScheduleSession',
            scheduleSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TreatmentSessionRequest.fromBuffer(value),
            ($0.TreatmentSession value) => value.writeToBuffer()));
  }

  $async.Future<$0.TestHelloResponse> testHello_Pre($grpc.ServiceCall call,
      $async.Future<$0.TestHelloRequest> request) async {
    return testHello(call, await request);
  }

  $async.Stream<$0.Veterinary> getVeterinarians_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VetRequest> request) async* {
    yield* getVeterinarians(call, await request);
  }

  $async.Stream<$0.Veterinary> getVeterinariansInLocation_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LocationRequest> request) async* {
    yield* getVeterinariansInLocation(call, await request);
  }

  $async.Future<$0.Veterinary> getVeterinarian_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VetRequest> request) async {
    return getVeterinarian(call, await request);
  }

  $async.Future<$0.Veterinary> updateVeterinarian_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Veterinary> request) async {
    return updateVeterinarian(call, await request);
  }

  $async.Future<$0.Farmer> updateFarmer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Farmer> request) async {
    return updateFarmer(call, await request);
  }

  $async.Future<$0.Veterinary> createVeterian_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Veterinary> request) async {
    return createVeterian(call, await request);
  }

  $async.Future<$0.Farmer> createFarmer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Farmer> request) async {
    return createFarmer(call, await request);
  }

  $async.Future<$0.Farmer> getFarmer_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FarmerRequest> request) async {
    return getFarmer(call, await request);
  }

  $async.Future<$0.TreatmentSession> scheduleSession_Pre($grpc.ServiceCall call,
      $async.Future<$0.TreatmentSessionRequest> request) async {
    return scheduleSession(call, await request);
  }

  $async.Future<$0.TestHelloResponse> testHello(
      $grpc.ServiceCall call, $0.TestHelloRequest request);
  $async.Stream<$0.Veterinary> getVeterinarians(
      $grpc.ServiceCall call, $0.VetRequest request);
  $async.Stream<$0.Veterinary> getVeterinariansInLocation(
      $grpc.ServiceCall call, $0.LocationRequest request);
  $async.Future<$0.Veterinary> getVeterinarian(
      $grpc.ServiceCall call, $0.VetRequest request);
  $async.Future<$0.Veterinary> updateVeterinarian(
      $grpc.ServiceCall call, $0.Veterinary request);
  $async.Future<$0.Farmer> updateFarmer(
      $grpc.ServiceCall call, $0.Farmer request);
  $async.Future<$0.Veterinary> createVeterian(
      $grpc.ServiceCall call, $0.Veterinary request);
  $async.Future<$0.Farmer> createFarmer(
      $grpc.ServiceCall call, $0.Farmer request);
  $async.Future<$0.Farmer> getFarmer(
      $grpc.ServiceCall call, $0.FarmerRequest request);
  $async.Future<$0.TreatmentSession> scheduleSession(
      $grpc.ServiceCall call, $0.TreatmentSessionRequest request);
}
