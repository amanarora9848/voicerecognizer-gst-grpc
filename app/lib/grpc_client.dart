import 'package:flutter/gestures.dart';
import 'package:grpc/grpc.dart';

final options = ChannelOptions(
    credentials: ChannelCredentials.insecure(),
    connectionTimeout: Duration(milliseconds: 500));

final clientChannel = ClientChannel('0.0.0.0', port: 50052, options: options);

// final stub = 