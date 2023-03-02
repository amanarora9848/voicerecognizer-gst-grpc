///
//  Generated code. Do not modify.
//  source: recognize.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RecognizerAction extends $pb.ProtobufEnum {
  static const RecognizerAction START = RecognizerAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'START');
  static const RecognizerAction STOP = RecognizerAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOP');

  static const $core.List<RecognizerAction> values = <RecognizerAction> [
    START,
    STOP,
  ];

  static final $core.Map<$core.int, RecognizerAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RecognizerAction? valueOf($core.int value) => _byValue[value];

  const RecognizerAction._($core.int v, $core.String n) : super(v, n);
}

