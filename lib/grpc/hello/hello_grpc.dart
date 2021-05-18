import 'package:cuu_tro_flutter/grpc/model/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';



class HelloGrpc {
  static Future<String> sayHello() async {
    final channel = ClientChannel(
      '10.0.2.2',
      port: 9090,

      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    final stub = GreeterClient(channel);

    try {
      final response = await stub.sayHello(
        HelloRequest()..name = "Khong the tin noi ",
        options: CallOptions(compression: const GzipCodec()),
      );

      print(response);
      print('Greeter client received: ${response.message}');
      return response.message.toString();
    } catch (e) {
      print(e);
      print('loi roi ma khong bat duoc ');
    }
    await channel.shutdown();
  }
}
