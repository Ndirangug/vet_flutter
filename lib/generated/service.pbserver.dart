// ///
// //  Generated code. Do not modify.
// //  source: lib/grpc/service.proto
// //
// // @dart = 2.12
// // ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

// import 'dart:async' as $async;

// import 'package:protobuf/protobuf.dart' as $pb;

// import 'dart:core' as $core;
// import 'service.pb.dart' as $1;
// import 'service.pbjson.dart';

// export 'service.pb.dart';

// abstract class VetsBackendServiceBase extends $pb.GeneratedService {
//   $async.Future<$1.TestHelloResponse> testHello($pb.ServerContext ctx, $1.TestHelloRequest request);
//   $async.Future<$1.Veterinary> getVeterinarians($pb.ServerContext ctx, $1.VetRequest request);
//   $async.Future<$1.Veterinary> getVeterinariansInLocation($pb.ServerContext ctx, $1.LocationRequest request);
//   $async.Future<$1.Veterinary> getVeterinarian($pb.ServerContext ctx, $1.VetRequest request);
//   $async.Future<$1.Veterinary> updateVeterinarian($pb.ServerContext ctx, $1.Veterinary request);
//   $async.Future<$1.Farmer> updateFarmer($pb.ServerContext ctx, $1.Farmer request);
//   $async.Future<$1.Veterinary> createVeterian($pb.ServerContext ctx, $1.Veterinary request);
//   $async.Future<$1.Farmer> createFarmer($pb.ServerContext ctx, $1.Farmer request);
//   $async.Future<$1.Farmer> getFarmer($pb.ServerContext ctx, $1.FarmerRequest request);
//   $async.Future<$1.TreatmentSession> scheduleSession($pb.ServerContext ctx, $1.TreatmentSessionRequest request);

//   $pb.GeneratedMessage createRequest($core.String method) {
//     switch (method) {
//       case 'TestHello': return $1.TestHelloRequest();
//       case 'GetVeterinarians': return $1.VetRequest();
//       case 'GetVeterinariansInLocation': return $1.LocationRequest();
//       case 'GetVeterinarian': return $1.VetRequest();
//       case 'UpdateVeterinarian': return $1.Veterinary();
//       case 'UpdateFarmer': return $1.Farmer();
//       case 'CreateVeterian': return $1.Veterinary();
//       case 'CreateFarmer': return $1.Farmer();
//       case 'GetFarmer': return $1.FarmerRequest();
//       case 'ScheduleSession': return $1.TreatmentSessionRequest();
//       default: throw $core.ArgumentError('Unknown method: $method');
//     }
//   }

//   $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
//     switch (method) {
//       case 'TestHello': return this.testHello(ctx, request as $1.TestHelloRequest);
//       case 'GetVeterinarians': return this.getVeterinarians(ctx, request as $1.VetRequest);
//       case 'GetVeterinariansInLocation': return this.getVeterinariansInLocation(ctx, request as $1.LocationRequest);
//       case 'GetVeterinarian': return this.getVeterinarian(ctx, request as $1.VetRequest);
//       case 'UpdateVeterinarian': return this.updateVeterinarian(ctx, request as $1.Veterinary);
//       case 'UpdateFarmer': return this.updateFarmer(ctx, request as $1.Farmer);
//       case 'CreateVeterian': return this.createVeterian(ctx, request as $1.Veterinary);
//       case 'CreateFarmer': return this.createFarmer(ctx, request as $1.Farmer);
//       case 'GetFarmer': return this.getFarmer(ctx, request as $1.FarmerRequest);
//       case 'ScheduleSession': return this.scheduleSession(ctx, request as $1.TreatmentSessionRequest);
//       default: throw $core.ArgumentError('Unknown method: $method');
//     }
//   }

//   $core.Map<$core.String, $core.dynamic> get $json => VetsBackendServiceBase$json;
//   $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => VetsBackendServiceBase$messageJson;
// }

