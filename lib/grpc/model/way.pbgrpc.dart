///
//  Generated code. Do not modify.
//  source: way.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'way.pb.dart' as $0;
export 'way.pb.dart';

class WayServiceClient extends $grpc.Client {
  static final _$createWay = $grpc.ClientMethod<$0.WayRequest, $0.WayResponse>(
      '/WayService/createWay',
      ($0.WayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WayResponse.fromBuffer(value));

  WayServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.WayResponse> createWay(
      $async.Stream<$0.WayRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$createWay, request, options: options).single;
  }
}

abstract class WayServiceBase extends $grpc.Service {
  $core.String get $name => 'WayService';

  WayServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.WayRequest, $0.WayResponse>(
        'createWay',
        createWay,
        true,
        false,
        ($core.List<$core.int> value) => $0.WayRequest.fromBuffer(value),
        ($0.WayResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.WayResponse> createWay(
      $grpc.ServiceCall call, $async.Stream<$0.WayRequest> request);
}
