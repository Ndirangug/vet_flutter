///
//  Generated code. Do not modify.
//  source: lib/grpc/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../google/protobuf/timestamp.pbjson.dart' as $0;

@$core.Deprecated('Use testHelloRequestDescriptor instead')
const TestHelloRequest$json = const {
  '1': 'TestHelloRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TestHelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testHelloRequestDescriptor = $convert.base64Decode('ChBUZXN0SGVsbG9SZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWU=');
@$core.Deprecated('Use testHelloResponseDescriptor instead')
const TestHelloResponse$json = const {
  '1': 'TestHelloResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `TestHelloResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testHelloResponseDescriptor = $convert.base64Decode('ChFUZXN0SGVsbG9SZXNwb25zZRIaCghyZXNwb25zZRgBIAEoCVIIcmVzcG9uc2U=');
@$core.Deprecated('Use emptyMessageDescriptor instead')
const EmptyMessage$json = const {
  '1': 'EmptyMessage',
};

/// Descriptor for `EmptyMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyMessageDescriptor = $convert.base64Decode('CgxFbXB0eU1lc3NhZ2U=');
@$core.Deprecated('Use veterinaryDescriptor instead')
const Veterinary$json = const {
  '1': 'Veterinary',
  '2': const [
    const {'1': 'vetId', '3': 10, '4': 1, '5': 5, '10': 'vetId'},
    const {'1': 'title', '3': 11, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'firstName', '3': 12, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 13, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'email', '3': 14, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 15, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 16, '4': 1, '5': 11, '6': '.vet_backend.Location', '10': 'address'},
    const {'1': 'summary', '3': 17, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'services', '3': 19, '4': 3, '5': 11, '6': '.vet_backend.VetService', '10': 'services'},
    const {'1': 'photo', '3': 20, '4': 1, '5': 12, '10': 'photo'},
  ],
};

/// Descriptor for `Veterinary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List veterinaryDescriptor = $convert.base64Decode('CgpWZXRlcmluYXJ5EhQKBXZldElkGAogASgFUgV2ZXRJZBIUCgV0aXRsZRgLIAEoCVIFdGl0bGUSHAoJZmlyc3ROYW1lGAwgASgJUglmaXJzdE5hbWUSGgoIbGFzdE5hbWUYDSABKAlSCGxhc3ROYW1lEhQKBWVtYWlsGA4gASgJUgVlbWFpbBIUCgVwaG9uZRgPIAEoCVIFcGhvbmUSLwoHYWRkcmVzcxgQIAEoCzIVLnZldF9iYWNrZW5kLkxvY2F0aW9uUgdhZGRyZXNzEhgKB3N1bW1hcnkYESABKAlSB3N1bW1hcnkSMwoIc2VydmljZXMYEyADKAsyFy52ZXRfYmFja2VuZC5WZXRTZXJ2aWNlUghzZXJ2aWNlcxIUCgVwaG90bxgUIAEoDFIFcGhvdG8=');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'long', '3': 2, '4': 1, '5': 1, '10': 'long'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode('CghMb2NhdGlvbhIQCgNsYXQYASABKAFSA2xhdBISCgRsb25nGAIgASgBUgRsb25nEhgKB2FkZHJlc3MYAyABKAlSB2FkZHJlc3M=');
@$core.Deprecated('Use locationRequestDescriptor instead')
const LocationRequest$json = const {
  '1': 'LocationRequest',
  '2': const [
    const {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.vet_backend.Location', '10': 'location'},
    const {'1': 'radius', '3': 2, '4': 1, '5': 2, '10': 'radius'},
  ],
};

/// Descriptor for `LocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationRequestDescriptor = $convert.base64Decode('Cg9Mb2NhdGlvblJlcXVlc3QSMQoIbG9jYXRpb24YASABKAsyFS52ZXRfYmFja2VuZC5Mb2NhdGlvblIIbG9jYXRpb24SFgoGcmFkaXVzGAIgASgCUgZyYWRpdXM=');
@$core.Deprecated('Use vetServiceDescriptor instead')
const VetService$json = const {
  '1': 'VetService',
  '2': const [
    const {'1': 'serviceId', '3': 10, '4': 1, '5': 5, '10': 'serviceId'},
    const {'1': 'title', '3': 11, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 12, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'unit', '3': 13, '4': 1, '5': 9, '10': 'unit'},
    const {'1': 'costPerUnit', '3': 14, '4': 1, '5': 1, '10': 'costPerUnit'},
  ],
};

/// Descriptor for `VetService`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vetServiceDescriptor = $convert.base64Decode('CgpWZXRTZXJ2aWNlEhwKCXNlcnZpY2VJZBgKIAEoBVIJc2VydmljZUlkEhQKBXRpdGxlGAsgASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgMIAEoCVILZGVzY3JpcHRpb24SEgoEdW5pdBgNIAEoCVIEdW5pdBIgCgtjb3N0UGVyVW5pdBgOIAEoAVILY29zdFBlclVuaXQ=');
@$core.Deprecated('Use vetServiceRequestDescriptor instead')
const VetServiceRequest$json = const {
  '1': 'VetServiceRequest',
  '2': const [
    const {'1': 'serviceId', '3': 10, '4': 1, '5': 5, '10': 'serviceId'},
    const {'1': 'units', '3': 13, '4': 1, '5': 5, '10': 'units'},
  ],
};

/// Descriptor for `VetServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vetServiceRequestDescriptor = $convert.base64Decode('ChFWZXRTZXJ2aWNlUmVxdWVzdBIcCglzZXJ2aWNlSWQYCiABKAVSCXNlcnZpY2VJZBIUCgV1bml0cxgNIAEoBVIFdW5pdHM=');
@$core.Deprecated('Use vetRequestDescriptor instead')
const VetRequest$json = const {
  '1': 'VetRequest',
  '2': const [
    const {'1': 'vetId', '3': 10, '4': 1, '5': 5, '10': 'vetId'},
    const {'1': 'searchQuery', '3': 11, '4': 1, '5': 9, '10': 'searchQuery'},
    const {'1': 'location', '3': 12, '4': 1, '5': 11, '6': '.vet_backend.Location', '10': 'location'},
  ],
};

/// Descriptor for `VetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vetRequestDescriptor = $convert.base64Decode('CgpWZXRSZXF1ZXN0EhQKBXZldElkGAogASgFUgV2ZXRJZBIgCgtzZWFyY2hRdWVyeRgLIAEoCVILc2VhcmNoUXVlcnkSMQoIbG9jYXRpb24YDCABKAsyFS52ZXRfYmFja2VuZC5Mb2NhdGlvblIIbG9jYXRpb24=');
@$core.Deprecated('Use farmerDescriptor instead')
const Farmer$json = const {
  '1': 'Farmer',
  '2': const [
    const {'1': 'farmerId', '3': 10, '4': 1, '5': 5, '10': 'farmerId'},
    const {'1': 'firstName', '3': 11, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 12, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'email', '3': 13, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 15, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'address', '3': 16, '4': 1, '5': 11, '6': '.vet_backend.Location', '10': 'address'},
    const {'1': 'photo', '3': 17, '4': 1, '5': 12, '10': 'photo'},
  ],
};

/// Descriptor for `Farmer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List farmerDescriptor = $convert.base64Decode('CgZGYXJtZXISGgoIZmFybWVySWQYCiABKAVSCGZhcm1lcklkEhwKCWZpcnN0TmFtZRgLIAEoCVIJZmlyc3ROYW1lEhoKCGxhc3ROYW1lGAwgASgJUghsYXN0TmFtZRIUCgVlbWFpbBgNIAEoCVIFZW1haWwSFAoFcGhvbmUYDyABKAlSBXBob25lEi8KB2FkZHJlc3MYECABKAsyFS52ZXRfYmFja2VuZC5Mb2NhdGlvblIHYWRkcmVzcxIUCgVwaG90bxgRIAEoDFIFcGhvdG8=');
@$core.Deprecated('Use farmerRequestDescriptor instead')
const FarmerRequest$json = const {
  '1': 'FarmerRequest',
  '2': const [
    const {'1': 'farmerId', '3': 1, '4': 1, '5': 5, '10': 'farmerId'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `FarmerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List farmerRequestDescriptor = $convert.base64Decode('Cg1GYXJtZXJSZXF1ZXN0EhoKCGZhcm1lcklkGAEgASgFUghmYXJtZXJJZBIUCgVlbWFpbBgCIAEoCVIFZW1haWw=');
@$core.Deprecated('Use treatmentSessionDescriptor instead')
const TreatmentSession$json = const {
  '1': 'TreatmentSession',
  '2': const [
    const {'1': 'sessionId', '3': 10, '4': 1, '5': 5, '10': 'sessionId'},
    const {'1': 'time', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'time'},
    const {'1': 'location', '3': 12, '4': 1, '5': 11, '6': '.vet_backend.Location', '10': 'location'},
    const {'1': 'farmerId', '3': 13, '4': 1, '5': 13, '10': 'farmerId'},
    const {'1': 'VeterinaryId', '3': 14, '4': 1, '5': 13, '10': 'VeterinaryId'},
    const {'1': 'services', '3': 15, '4': 3, '5': 11, '6': '.vet_backend.VetService', '10': 'services'},
  ],
};

/// Descriptor for `TreatmentSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treatmentSessionDescriptor = $convert.base64Decode('ChBUcmVhdG1lbnRTZXNzaW9uEhwKCXNlc3Npb25JZBgKIAEoBVIJc2Vzc2lvbklkEi4KBHRpbWUYCyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgR0aW1lEjEKCGxvY2F0aW9uGAwgASgLMhUudmV0X2JhY2tlbmQuTG9jYXRpb25SCGxvY2F0aW9uEhoKCGZhcm1lcklkGA0gASgNUghmYXJtZXJJZBIiCgxWZXRlcmluYXJ5SWQYDiABKA1SDFZldGVyaW5hcnlJZBIzCghzZXJ2aWNlcxgPIAMoCzIXLnZldF9iYWNrZW5kLlZldFNlcnZpY2VSCHNlcnZpY2Vz');
@$core.Deprecated('Use treatmentSessionRequestDescriptor instead')
const TreatmentSessionRequest$json = const {
  '1': 'TreatmentSessionRequest',
  '2': const [
    const {'1': 'time', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'time'},
    const {'1': 'location', '3': 12, '4': 1, '5': 11, '6': '.vet_backend.Location', '10': 'location'},
    const {'1': 'farmerId', '3': 13, '4': 1, '5': 13, '10': 'farmerId'},
    const {'1': 'VeterinaryId', '3': 14, '4': 1, '5': 13, '10': 'VeterinaryId'},
    const {'1': 'services', '3': 15, '4': 3, '5': 11, '6': '.vet_backend.VetServiceRequest', '10': 'services'},
  ],
};

/// Descriptor for `TreatmentSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treatmentSessionRequestDescriptor = $convert.base64Decode('ChdUcmVhdG1lbnRTZXNzaW9uUmVxdWVzdBIuCgR0aW1lGAsgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIEdGltZRIxCghsb2NhdGlvbhgMIAEoCzIVLnZldF9iYWNrZW5kLkxvY2F0aW9uUghsb2NhdGlvbhIaCghmYXJtZXJJZBgNIAEoDVIIZmFybWVySWQSIgoMVmV0ZXJpbmFyeUlkGA4gASgNUgxWZXRlcmluYXJ5SWQSOgoIc2VydmljZXMYDyADKAsyHi52ZXRfYmFja2VuZC5WZXRTZXJ2aWNlUmVxdWVzdFIIc2VydmljZXM=');
const $core.Map<$core.String, $core.dynamic> VetsBackendServiceBase$json = const {
  '1': 'VetsBackend',
  '2': const [
    const {'1': 'TestHello', '2': '.vet_backend.TestHelloRequest', '3': '.vet_backend.TestHelloResponse'},
    const {'1': 'GetVeterinarians', '2': '.vet_backend.VetRequest', '3': '.vet_backend.Veterinary', '6': true},
    const {'1': 'GetVeterinariansInLocation', '2': '.vet_backend.LocationRequest', '3': '.vet_backend.Veterinary', '6': true},
    const {'1': 'GetVeterinarian', '2': '.vet_backend.VetRequest', '3': '.vet_backend.Veterinary'},
    const {'1': 'UpdateVeterinarian', '2': '.vet_backend.Veterinary', '3': '.vet_backend.Veterinary'},
    const {'1': 'UpdateFarmer', '2': '.vet_backend.Farmer', '3': '.vet_backend.Farmer'},
    const {'1': 'CreateVeterian', '2': '.vet_backend.Veterinary', '3': '.vet_backend.Veterinary'},
    const {'1': 'CreateFarmer', '2': '.vet_backend.Farmer', '3': '.vet_backend.Farmer'},
    const {'1': 'GetFarmer', '2': '.vet_backend.FarmerRequest', '3': '.vet_backend.Farmer'},
    const {'1': 'ScheduleSession', '2': '.vet_backend.TreatmentSessionRequest', '3': '.vet_backend.TreatmentSession'},
  ],
};

@$core.Deprecated('Use vetsBackendServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> VetsBackendServiceBase$messageJson = const {
  '.vet_backend.TestHelloRequest': TestHelloRequest$json,
  '.vet_backend.TestHelloResponse': TestHelloResponse$json,
  '.vet_backend.VetRequest': VetRequest$json,
  '.vet_backend.Location': Location$json,
  '.vet_backend.Veterinary': Veterinary$json,
  '.vet_backend.VetService': VetService$json,
  '.vet_backend.LocationRequest': LocationRequest$json,
  '.vet_backend.Farmer': Farmer$json,
  '.vet_backend.FarmerRequest': FarmerRequest$json,
  '.vet_backend.TreatmentSessionRequest': TreatmentSessionRequest$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.vet_backend.VetServiceRequest': VetServiceRequest$json,
  '.vet_backend.TreatmentSession': TreatmentSession$json,
};

/// Descriptor for `VetsBackend`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List vetsBackendServiceDescriptor = $convert.base64Decode('CgtWZXRzQmFja2VuZBJKCglUZXN0SGVsbG8SHS52ZXRfYmFja2VuZC5UZXN0SGVsbG9SZXF1ZXN0Gh4udmV0X2JhY2tlbmQuVGVzdEhlbGxvUmVzcG9uc2USRgoQR2V0VmV0ZXJpbmFyaWFucxIXLnZldF9iYWNrZW5kLlZldFJlcXVlc3QaFy52ZXRfYmFja2VuZC5WZXRlcmluYXJ5MAESVQoaR2V0VmV0ZXJpbmFyaWFuc0luTG9jYXRpb24SHC52ZXRfYmFja2VuZC5Mb2NhdGlvblJlcXVlc3QaFy52ZXRfYmFja2VuZC5WZXRlcmluYXJ5MAESQwoPR2V0VmV0ZXJpbmFyaWFuEhcudmV0X2JhY2tlbmQuVmV0UmVxdWVzdBoXLnZldF9iYWNrZW5kLlZldGVyaW5hcnkSRgoSVXBkYXRlVmV0ZXJpbmFyaWFuEhcudmV0X2JhY2tlbmQuVmV0ZXJpbmFyeRoXLnZldF9iYWNrZW5kLlZldGVyaW5hcnkSOAoMVXBkYXRlRmFybWVyEhMudmV0X2JhY2tlbmQuRmFybWVyGhMudmV0X2JhY2tlbmQuRmFybWVyEkIKDkNyZWF0ZVZldGVyaWFuEhcudmV0X2JhY2tlbmQuVmV0ZXJpbmFyeRoXLnZldF9iYWNrZW5kLlZldGVyaW5hcnkSOAoMQ3JlYXRlRmFybWVyEhMudmV0X2JhY2tlbmQuRmFybWVyGhMudmV0X2JhY2tlbmQuRmFybWVyEjwKCUdldEZhcm1lchIaLnZldF9iYWNrZW5kLkZhcm1lclJlcXVlc3QaEy52ZXRfYmFja2VuZC5GYXJtZXISVgoPU2NoZWR1bGVTZXNzaW9uEiQudmV0X2JhY2tlbmQuVHJlYXRtZW50U2Vzc2lvblJlcXVlc3QaHS52ZXRfYmFja2VuZC5UcmVhdG1lbnRTZXNzaW9u');
