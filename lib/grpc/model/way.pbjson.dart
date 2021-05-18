///
//  Generated code. Do not modify.
//  source: way.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use wayRequestDescriptor instead')
const WayRequest$json = const {
  '1': 'WayRequest',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'lon', '3': 2, '4': 1, '5': 1, '10': 'lon'},
  ],
};

/// Descriptor for `WayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wayRequestDescriptor = $convert.base64Decode('CgpXYXlSZXF1ZXN0EhAKA2xhdBgBIAEoAVIDbGF0EhAKA2xvbhgCIAEoAVIDbG9u');
@$core.Deprecated('Use wayResponseDescriptor instead')
const WayResponse$json = const {
  '1': 'WayResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'location', '3': 5, '4': 1, '5': 9, '10': 'location'},
  ],
};

/// Descriptor for `WayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wayResponseDescriptor = $convert.base64Decode('CgtXYXlSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRIaCghsb2NhdGlvbhgFIAEoCVIIbG9jYXRpb24=');
