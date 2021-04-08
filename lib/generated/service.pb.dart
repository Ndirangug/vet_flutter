///
//  Generated code. Do not modify.
//  source: lib/generated/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $1;

class TestHelloRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestHelloRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  TestHelloRequest._() : super();
  factory TestHelloRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory TestHelloRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestHelloRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestHelloRequest clone() => TestHelloRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestHelloRequest copyWith(void Function(TestHelloRequest) updates) => super.copyWith((message) => updates(message as TestHelloRequest)) as TestHelloRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestHelloRequest create() => TestHelloRequest._();
  TestHelloRequest createEmptyInstance() => create();
  static $pb.PbList<TestHelloRequest> createRepeated() => $pb.PbList<TestHelloRequest>();
  @$core.pragma('dart2js:noInline')
  static TestHelloRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestHelloRequest>(create);
  static TestHelloRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class TestHelloResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestHelloResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response')
    ..hasRequiredFields = false
  ;

  TestHelloResponse._() : super();
  factory TestHelloResponse({
    $core.String? response,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    return _result;
  }
  factory TestHelloResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestHelloResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestHelloResponse clone() => TestHelloResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestHelloResponse copyWith(void Function(TestHelloResponse) updates) => super.copyWith((message) => updates(message as TestHelloResponse)) as TestHelloResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestHelloResponse create() => TestHelloResponse._();
  TestHelloResponse createEmptyInstance() => create();
  static $pb.PbList<TestHelloResponse> createRepeated() => $pb.PbList<TestHelloResponse>();
  @$core.pragma('dart2js:noInline')
  static TestHelloResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestHelloResponse>(create);
  static TestHelloResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
}

class EmptyMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyMessage._() : super();
  factory EmptyMessage() => create();
  factory EmptyMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyMessage clone() => EmptyMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyMessage copyWith(void Function(EmptyMessage) updates) => super.copyWith((message) => updates(message as EmptyMessage)) as EmptyMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyMessage create() => EmptyMessage._();
  EmptyMessage createEmptyInstance() => create();
  static $pb.PbList<EmptyMessage> createRepeated() => $pb.PbList<EmptyMessage>();
  @$core.pragma('dart2js:noInline')
  static EmptyMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyMessage>(create);
  static EmptyMessage? _defaultInstance;
}

class Veterinary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Veterinary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vetId', $pb.PbFieldType.O3, protoName: 'vetId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName', protoName: 'firstName')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName', protoName: 'lastName')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<Location>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Location.create)
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'summary')
    ..pc<VetService>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', $pb.PbFieldType.PM, subBuilder: VetService.create)
    ..a<$core.List<$core.int>>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Veterinary._() : super();
  factory Veterinary({
    $core.int? vetId,
    $core.String? title,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.String? phone,
    Location? address,
    $core.String? summary,
    $core.Iterable<VetService>? services,
    $core.List<$core.int>? photo,
  }) {
    final _result = create();
    if (vetId != null) {
      _result.vetId = vetId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (email != null) {
      _result.email = email;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (address != null) {
      _result.address = address;
    }
    if (summary != null) {
      _result.summary = summary;
    }
    if (services != null) {
      _result.services.addAll(services);
    }
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory Veterinary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Veterinary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Veterinary clone() => Veterinary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Veterinary copyWith(void Function(Veterinary) updates) => super.copyWith((message) => updates(message as Veterinary)) as Veterinary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Veterinary create() => Veterinary._();
  Veterinary createEmptyInstance() => create();
  static $pb.PbList<Veterinary> createRepeated() => $pb.PbList<Veterinary>();
  @$core.pragma('dart2js:noInline')
  static Veterinary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Veterinary>(create);
  static Veterinary? _defaultInstance;

  @$pb.TagNumber(10)
  $core.int get vetId => $_getIZ(0);
  @$pb.TagNumber(10)
  set vetId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasVetId() => $_has(0);
  @$pb.TagNumber(10)
  void clearVetId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(11)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(11)
  void clearTitle() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(12)
  set firstName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(12)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(12)
  void clearFirstName() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(13)
  set lastName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(13)
  void clearLastName() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(14)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(14)
  void clearEmail() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get phone => $_getSZ(5);
  @$pb.TagNumber(15)
  set phone($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(15)
  $core.bool hasPhone() => $_has(5);
  @$pb.TagNumber(15)
  void clearPhone() => clearField(15);

  @$pb.TagNumber(16)
  Location get address => $_getN(6);
  @$pb.TagNumber(16)
  set address(Location v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasAddress() => $_has(6);
  @$pb.TagNumber(16)
  void clearAddress() => clearField(16);
  @$pb.TagNumber(16)
  Location ensureAddress() => $_ensure(6);

  @$pb.TagNumber(17)
  $core.String get summary => $_getSZ(7);
  @$pb.TagNumber(17)
  set summary($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(17)
  $core.bool hasSummary() => $_has(7);
  @$pb.TagNumber(17)
  void clearSummary() => clearField(17);

  @$pb.TagNumber(19)
  $core.List<VetService> get services => $_getList(8);

  @$pb.TagNumber(20)
  $core.List<$core.int> get photo => $_getN(9);
  @$pb.TagNumber(20)
  set photo($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(20)
  $core.bool hasPhoto() => $_has(9);
  @$pb.TagNumber(20)
  void clearPhoto() => clearField(20);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'long', $pb.PbFieldType.OD)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location({
    $core.double? lat,
    $core.double? long,
    $core.String? address,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (long != null) {
      _result.long = long;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get long => $_getN(1);
  @$pb.TagNumber(2)
  set long($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLong() => $_has(1);
  @$pb.TagNumber(2)
  void clearLong() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class LocationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..aOM<Location>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: Location.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'radius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  LocationRequest._() : super();
  factory LocationRequest({
    Location? location,
    $core.double? radius,
  }) {
    final _result = create();
    if (location != null) {
      _result.location = location;
    }
    if (radius != null) {
      _result.radius = radius;
    }
    return _result;
  }
  factory LocationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationRequest clone() => LocationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationRequest copyWith(void Function(LocationRequest) updates) => super.copyWith((message) => updates(message as LocationRequest)) as LocationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationRequest create() => LocationRequest._();
  LocationRequest createEmptyInstance() => create();
  static $pb.PbList<LocationRequest> createRepeated() => $pb.PbList<LocationRequest>();
  @$core.pragma('dart2js:noInline')
  static LocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationRequest>(create);
  static LocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location(Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  Location ensureLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get radius => $_getN(1);
  @$pb.TagNumber(2)
  set radius($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRadius() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadius() => clearField(2);
}

class VetService extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VetService', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId', $pb.PbFieldType.O3, protoName: 'serviceId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unit')
    ..a<$core.double>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'costPerUnit', $pb.PbFieldType.OD, protoName: 'costPerUnit')
    ..hasRequiredFields = false
  ;

  VetService._() : super();
  factory VetService({
    $core.int? serviceId,
    $core.String? title,
    $core.String? description,
    $core.String? unit,
    $core.double? costPerUnit,
  }) {
    final _result = create();
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (costPerUnit != null) {
      _result.costPerUnit = costPerUnit;
    }
    return _result;
  }
  factory VetService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VetService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VetService clone() => VetService()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VetService copyWith(void Function(VetService) updates) => super.copyWith((message) => updates(message as VetService)) as VetService; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VetService create() => VetService._();
  VetService createEmptyInstance() => create();
  static $pb.PbList<VetService> createRepeated() => $pb.PbList<VetService>();
  @$core.pragma('dart2js:noInline')
  static VetService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VetService>(create);
  static VetService? _defaultInstance;

  @$pb.TagNumber(10)
  $core.int get serviceId => $_getIZ(0);
  @$pb.TagNumber(10)
  set serviceId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(10)
  void clearServiceId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(11)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(11)
  void clearTitle() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(12)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(12)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(12)
  void clearDescription() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get unit => $_getSZ(3);
  @$pb.TagNumber(13)
  set unit($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasUnit() => $_has(3);
  @$pb.TagNumber(13)
  void clearUnit() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get costPerUnit => $_getN(4);
  @$pb.TagNumber(14)
  set costPerUnit($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasCostPerUnit() => $_has(4);
  @$pb.TagNumber(14)
  void clearCostPerUnit() => clearField(14);
}

class VetServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VetServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId', $pb.PbFieldType.O3, protoName: 'serviceId')
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'units', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  VetServiceRequest._() : super();
  factory VetServiceRequest({
    $core.int? serviceId,
    $core.int? units,
  }) {
    final _result = create();
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    if (units != null) {
      _result.units = units;
    }
    return _result;
  }
  factory VetServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VetServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VetServiceRequest clone() => VetServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VetServiceRequest copyWith(void Function(VetServiceRequest) updates) => super.copyWith((message) => updates(message as VetServiceRequest)) as VetServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VetServiceRequest create() => VetServiceRequest._();
  VetServiceRequest createEmptyInstance() => create();
  static $pb.PbList<VetServiceRequest> createRepeated() => $pb.PbList<VetServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static VetServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VetServiceRequest>(create);
  static VetServiceRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $core.int get serviceId => $_getIZ(0);
  @$pb.TagNumber(10)
  set serviceId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(10)
  void clearServiceId() => clearField(10);

  @$pb.TagNumber(13)
  $core.int get units => $_getIZ(1);
  @$pb.TagNumber(13)
  set units($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(13)
  $core.bool hasUnits() => $_has(1);
  @$pb.TagNumber(13)
  void clearUnits() => clearField(13);
}

class VetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vetId', $pb.PbFieldType.O3, protoName: 'vetId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchQuery', protoName: 'searchQuery')
    ..aOM<Location>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: Location.create)
    ..hasRequiredFields = false
  ;

  VetRequest._() : super();
  factory VetRequest({
    $core.int? vetId,
    $core.String? searchQuery,
    Location? location,
  }) {
    final _result = create();
    if (vetId != null) {
      _result.vetId = vetId;
    }
    if (searchQuery != null) {
      _result.searchQuery = searchQuery;
    }
    if (location != null) {
      _result.location = location;
    }
    return _result;
  }
  factory VetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VetRequest clone() => VetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VetRequest copyWith(void Function(VetRequest) updates) => super.copyWith((message) => updates(message as VetRequest)) as VetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VetRequest create() => VetRequest._();
  VetRequest createEmptyInstance() => create();
  static $pb.PbList<VetRequest> createRepeated() => $pb.PbList<VetRequest>();
  @$core.pragma('dart2js:noInline')
  static VetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VetRequest>(create);
  static VetRequest? _defaultInstance;

  @$pb.TagNumber(10)
  $core.int get vetId => $_getIZ(0);
  @$pb.TagNumber(10)
  set vetId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasVetId() => $_has(0);
  @$pb.TagNumber(10)
  void clearVetId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get searchQuery => $_getSZ(1);
  @$pb.TagNumber(11)
  set searchQuery($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasSearchQuery() => $_has(1);
  @$pb.TagNumber(11)
  void clearSearchQuery() => clearField(11);

  @$pb.TagNumber(12)
  Location get location => $_getN(2);
  @$pb.TagNumber(12)
  set location(Location v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(12)
  void clearLocation() => clearField(12);
  @$pb.TagNumber(12)
  Location ensureLocation() => $_ensure(2);
}

class Farmer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Farmer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'farmerId', $pb.PbFieldType.O3, protoName: 'farmerId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName', protoName: 'firstName')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName', protoName: 'lastName')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOM<Location>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address', subBuilder: Location.create)
    ..a<$core.List<$core.int>>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Farmer._() : super();
  factory Farmer({
    $core.int? farmerId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.String? phone,
    Location? address,
    $core.List<$core.int>? photo,
  }) {
    final _result = create();
    if (farmerId != null) {
      _result.farmerId = farmerId;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (email != null) {
      _result.email = email;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (address != null) {
      _result.address = address;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    return _result;
  }
  factory Farmer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Farmer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Farmer clone() => Farmer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Farmer copyWith(void Function(Farmer) updates) => super.copyWith((message) => updates(message as Farmer)) as Farmer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Farmer create() => Farmer._();
  Farmer createEmptyInstance() => create();
  static $pb.PbList<Farmer> createRepeated() => $pb.PbList<Farmer>();
  @$core.pragma('dart2js:noInline')
  static Farmer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Farmer>(create);
  static Farmer? _defaultInstance;

  @$pb.TagNumber(10)
  $core.int get farmerId => $_getIZ(0);
  @$pb.TagNumber(10)
  set farmerId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasFarmerId() => $_has(0);
  @$pb.TagNumber(10)
  void clearFarmerId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(11)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(11)
  void clearFirstName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(12)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(12)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(12)
  void clearLastName() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(13)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(13)
  void clearEmail() => clearField(13);

  @$pb.TagNumber(15)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(15)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(15)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(15)
  void clearPhone() => clearField(15);

  @$pb.TagNumber(16)
  Location get address => $_getN(5);
  @$pb.TagNumber(16)
  set address(Location v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasAddress() => $_has(5);
  @$pb.TagNumber(16)
  void clearAddress() => clearField(16);
  @$pb.TagNumber(16)
  Location ensureAddress() => $_ensure(5);

  @$pb.TagNumber(17)
  $core.List<$core.int> get photo => $_getN(6);
  @$pb.TagNumber(17)
  set photo($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(17)
  $core.bool hasPhoto() => $_has(6);
  @$pb.TagNumber(17)
  void clearPhoto() => clearField(17);
}

class FarmerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FarmerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'farmerId', $pb.PbFieldType.O3, protoName: 'farmerId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  FarmerRequest._() : super();
  factory FarmerRequest({
    $core.int? farmerId,
    $core.String? email,
  }) {
    final _result = create();
    if (farmerId != null) {
      _result.farmerId = farmerId;
    }
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory FarmerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FarmerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FarmerRequest clone() => FarmerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FarmerRequest copyWith(void Function(FarmerRequest) updates) => super.copyWith((message) => updates(message as FarmerRequest)) as FarmerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FarmerRequest create() => FarmerRequest._();
  FarmerRequest createEmptyInstance() => create();
  static $pb.PbList<FarmerRequest> createRepeated() => $pb.PbList<FarmerRequest>();
  @$core.pragma('dart2js:noInline')
  static FarmerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FarmerRequest>(create);
  static FarmerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get farmerId => $_getIZ(0);
  @$pb.TagNumber(1)
  set farmerId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFarmerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFarmerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class TreatmentSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TreatmentSession', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionId', $pb.PbFieldType.O3, protoName: 'sessionId')
    ..aOM<$1.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: $1.Timestamp.create)
    ..aOM<Location>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: Location.create)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'farmerId', $pb.PbFieldType.OU3, protoName: 'farmerId')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VeterinaryId', $pb.PbFieldType.OU3, protoName: 'VeterinaryId')
    ..pc<VetService>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', $pb.PbFieldType.PM, subBuilder: VetService.create)
    ..hasRequiredFields = false
  ;

  TreatmentSession._() : super();
  factory TreatmentSession({
    $core.int? sessionId,
    $1.Timestamp? time,
    Location? location,
    $core.int? farmerId,
    $core.int? veterinaryId,
    $core.Iterable<VetService>? services,
  }) {
    final _result = create();
    if (sessionId != null) {
      _result.sessionId = sessionId;
    }
    if (time != null) {
      _result.time = time;
    }
    if (location != null) {
      _result.location = location;
    }
    if (farmerId != null) {
      _result.farmerId = farmerId;
    }
    if (veterinaryId != null) {
      _result.veterinaryId = veterinaryId;
    }
    if (services != null) {
      _result.services.addAll(services);
    }
    return _result;
  }
  factory TreatmentSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TreatmentSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TreatmentSession clone() => TreatmentSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TreatmentSession copyWith(void Function(TreatmentSession) updates) => super.copyWith((message) => updates(message as TreatmentSession)) as TreatmentSession; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TreatmentSession create() => TreatmentSession._();
  TreatmentSession createEmptyInstance() => create();
  static $pb.PbList<TreatmentSession> createRepeated() => $pb.PbList<TreatmentSession>();
  @$core.pragma('dart2js:noInline')
  static TreatmentSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TreatmentSession>(create);
  static TreatmentSession? _defaultInstance;

  @$pb.TagNumber(10)
  $core.int get sessionId => $_getIZ(0);
  @$pb.TagNumber(10)
  set sessionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(10)
  void clearSessionId() => clearField(10);

  @$pb.TagNumber(11)
  $1.Timestamp get time => $_getN(1);
  @$pb.TagNumber(11)
  set time($1.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(11)
  void clearTime() => clearField(11);
  @$pb.TagNumber(11)
  $1.Timestamp ensureTime() => $_ensure(1);

  @$pb.TagNumber(12)
  Location get location => $_getN(2);
  @$pb.TagNumber(12)
  set location(Location v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(12)
  void clearLocation() => clearField(12);
  @$pb.TagNumber(12)
  Location ensureLocation() => $_ensure(2);

  @$pb.TagNumber(13)
  $core.int get farmerId => $_getIZ(3);
  @$pb.TagNumber(13)
  set farmerId($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(13)
  $core.bool hasFarmerId() => $_has(3);
  @$pb.TagNumber(13)
  void clearFarmerId() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get veterinaryId => $_getIZ(4);
  @$pb.TagNumber(14)
  set veterinaryId($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(14)
  $core.bool hasVeterinaryId() => $_has(4);
  @$pb.TagNumber(14)
  void clearVeterinaryId() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<VetService> get services => $_getList(5);
}

class TreatmentSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TreatmentSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vet_backend'), createEmptyInstance: create)
    ..aOM<$1.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: $1.Timestamp.create)
    ..aOM<Location>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: Location.create)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'farmerId', $pb.PbFieldType.OU3, protoName: 'farmerId')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'VeterinaryId', $pb.PbFieldType.OU3, protoName: 'VeterinaryId')
    ..pc<VetServiceRequest>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'services', $pb.PbFieldType.PM, subBuilder: VetServiceRequest.create)
    ..hasRequiredFields = false
  ;

  TreatmentSessionRequest._() : super();
  factory TreatmentSessionRequest({
    $1.Timestamp? time,
    Location? location,
    $core.int? farmerId,
    $core.int? veterinaryId,
    $core.Iterable<VetServiceRequest>? services,
  }) {
    final _result = create();
    if (time != null) {
      _result.time = time;
    }
    if (location != null) {
      _result.location = location;
    }
    if (farmerId != null) {
      _result.farmerId = farmerId;
    }
    if (veterinaryId != null) {
      _result.veterinaryId = veterinaryId;
    }
    if (services != null) {
      _result.services.addAll(services);
    }
    return _result;
  }
  factory TreatmentSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TreatmentSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TreatmentSessionRequest clone() => TreatmentSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TreatmentSessionRequest copyWith(void Function(TreatmentSessionRequest) updates) => super.copyWith((message) => updates(message as TreatmentSessionRequest)) as TreatmentSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TreatmentSessionRequest create() => TreatmentSessionRequest._();
  TreatmentSessionRequest createEmptyInstance() => create();
  static $pb.PbList<TreatmentSessionRequest> createRepeated() => $pb.PbList<TreatmentSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static TreatmentSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TreatmentSessionRequest>(create);
  static TreatmentSessionRequest? _defaultInstance;

  @$pb.TagNumber(11)
  $1.Timestamp get time => $_getN(0);
  @$pb.TagNumber(11)
  set time($1.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(11)
  void clearTime() => clearField(11);
  @$pb.TagNumber(11)
  $1.Timestamp ensureTime() => $_ensure(0);

  @$pb.TagNumber(12)
  Location get location => $_getN(1);
  @$pb.TagNumber(12)
  set location(Location v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(12)
  void clearLocation() => clearField(12);
  @$pb.TagNumber(12)
  Location ensureLocation() => $_ensure(1);

  @$pb.TagNumber(13)
  $core.int get farmerId => $_getIZ(2);
  @$pb.TagNumber(13)
  set farmerId($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(13)
  $core.bool hasFarmerId() => $_has(2);
  @$pb.TagNumber(13)
  void clearFarmerId() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get veterinaryId => $_getIZ(3);
  @$pb.TagNumber(14)
  set veterinaryId($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(14)
  $core.bool hasVeterinaryId() => $_has(3);
  @$pb.TagNumber(14)
  void clearVeterinaryId() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<VetServiceRequest> get services => $_getList(4);
}

