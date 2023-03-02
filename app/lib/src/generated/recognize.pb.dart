///
//  Generated code. Do not modify.
//  source: recognize.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'recognize.pbenum.dart';

export 'recognize.pbenum.dart';

class RecognizerControl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognizerControl', createEmptyInstance: create)
    ..e<RecognizerAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: RecognizerAction.START, valueOf: RecognizerAction.valueOf, enumValues: RecognizerAction.values)
    ..hasRequiredFields = false
  ;

  RecognizerControl._() : super();
  factory RecognizerControl({
    RecognizerAction? action,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    return _result;
  }
  factory RecognizerControl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognizerControl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognizerControl clone() => RecognizerControl()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognizerControl copyWith(void Function(RecognizerControl) updates) => super.copyWith((message) => updates(message as RecognizerControl)) as RecognizerControl; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognizerControl create() => RecognizerControl._();
  RecognizerControl createEmptyInstance() => create();
  static $pb.PbList<RecognizerControl> createRepeated() => $pb.PbList<RecognizerControl>();
  @$core.pragma('dart2js:noInline')
  static RecognizerControl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognizerControl>(create);
  static RecognizerControl? _defaultInstance;

  @$pb.TagNumber(1)
  RecognizerAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(RecognizerAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);
}

class RecognizerResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RecognizerResult', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result')
    ..hasRequiredFields = false
  ;

  RecognizerResult._() : super();
  factory RecognizerResult({
    $core.String? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory RecognizerResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RecognizerResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RecognizerResult clone() => RecognizerResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RecognizerResult copyWith(void Function(RecognizerResult) updates) => super.copyWith((message) => updates(message as RecognizerResult)) as RecognizerResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RecognizerResult create() => RecognizerResult._();
  RecognizerResult createEmptyInstance() => create();
  static $pb.PbList<RecognizerResult> createRepeated() => $pb.PbList<RecognizerResult>();
  @$core.pragma('dart2js:noInline')
  static RecognizerResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RecognizerResult>(create);
  static RecognizerResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

