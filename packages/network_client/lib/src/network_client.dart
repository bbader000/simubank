import 'package:dio/dio.dart';
import 'package:network_client/network_client.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

typedef Json = Map<String, dynamic>;

class NetworkClient {
  NetworkClient({required InitClient initClient}) {
    final privateOptions = BaseOptions(
      baseUrl: initClient.basePrivateUrl,
      contentType: 'application/json',
    );
    final publicOptions = BaseOptions(
      baseUrl: initClient.basePublicUrl,
      contentType: 'application/json',
    );

    _serverPrivate = Dio(privateOptions)
      ..interceptors.addAll([
        TokenInterceptor(
          _preferences,
          initClient: initClient,
        ),
        PrettyDioLogger(requestBody: true),
      ])
      ..transformer = BackgroundTransformer();
    _serverPublic = Dio(publicOptions)
      ..interceptors.addAll([
        PrettyDioLogger(requestBody: true),
      ])
      ..transformer = BackgroundTransformer();
  }

  final LocalStorageUtils _preferences = LocalStorageUtils();

  late Dio _serverPublic;
  late Dio _serverPrivate;

  Dio get serverPublic => _serverPublic;
  Dio get serverPrivate => _serverPrivate;
}
