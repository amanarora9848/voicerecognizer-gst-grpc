///
//  Generated code. Do not modify.
//  source: recognize.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use controlDescriptor instead')
const Control$json = const {
  '1': 'Control',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 8, '10': 'start'},
    const {'1': 'stop', '3': 2, '4': 1, '5': 8, '10': 'stop'},
  ],
};

/// Descriptor for `Control`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlDescriptor = $convert.base64Decode('CgdDb250cm9sEhQKBXN0YXJ0GAEgASgIUgVzdGFydBISCgRzdG9wGAIgASgIUgRzdG9w');
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSFgoGcmVzdWx0GAEgASgJUgZyZXN1bHQ=');
