import 'package:cuu_tro_flutter/grpc/client/way/way_metadata.dart';
import 'package:cuu_tro_flutter/grpc/model/way.pbgrpc.dart';

import 'package:grpc/grpc.dart';


class WayGrpcClient {
  WayGrpcClient();

  static Future<void> run() async {
    final channel = ClientChannel('10.0.2.2',
        port: 9090,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    print(channel.port);
    WayMetadata wayMetadata = new WayMetadata(
        id: "id",
        name: "Đường vào tim em ",
        location: "a á ớ b c",
        description: "Đường này chỉ dùng để test",
        idPerson: "id của người chỉnh sửa",
        newWayType: "ROAD");
    CallOptions callOptions =
        new CallOptions(metadata: wayMetadata.toStringJson());
    WayServiceClient stub = WayServiceClient(channel, options: callOptions);
    print(stub);
    try {
      Stream<WayRequest> generatedWay() async* {
        for (int i = 0; i < 10; i++) {
          WayRequest wayRequest =
              new WayRequest(lat: 123123.0, lon: 21321312312.0);
          yield wayRequest;
        }
      }
      WayResponse summary = await stub.createWay(generatedWay());
      print(summary);
      print('passing in here but nothing revceiver ');
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }
}
