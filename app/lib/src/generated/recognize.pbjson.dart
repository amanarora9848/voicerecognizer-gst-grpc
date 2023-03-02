///
//  Generated code. Do not modify.
//  source: recognize.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use recognizerActionDescriptor instead')
const RecognizerAction$json = const {
  '1': 'RecognizerAction',
  '2': const [
    const {'1': 'START', '2': 0},
    const {'1': 'STOP', '2': 1},
  ],
};

/// Descriptor for `RecognizerAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recognizerActionDescriptor = $convert.base64Decode('ChBSZWNvZ25pemVyQWN0aW9uEgkKBVNUQVJUEAASCAoEU1RPUBAB');
@$core.Deprecated('Use recognizerControlDescriptor instead')
const RecognizerControl$json = const {
  '1': 'RecognizerControl',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 14, '6': '.RecognizerAction', '10': 'action'},
  ],
};

/// Descriptor for `RecognizerControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizerControlDescriptor = $convert.base64Decode('ChFSZWNvZ25pemVyQ29udHJvbBIpCgZhY3Rpb24YASABKA4yES5SZWNvZ25pemVyQWN0aW9uUgZhY3Rpb24=');
@$core.Deprecated('Use recognizerResultDescriptor instead')
const RecognizerResult$json = const {
  '1': 'RecognizerResult',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `RecognizerResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recognizerResultDescriptor = $convert.base64Decode('ChBSZWNvZ25pemVyUmVzdWx0EhYKBnJlc3VsdBgBIAEoCVIGcmVzdWx0');
