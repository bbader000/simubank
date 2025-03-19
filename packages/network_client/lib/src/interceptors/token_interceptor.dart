import 'package:dio/dio.dart';
import 'package:network_client/network_client.dart';

class TokenInterceptor extends QueuedInterceptor {
  TokenInterceptor(
    this._localStorageUtils, {
    required this.initClient,
  });

  final LocalStorageUtils _localStorageUtils;
  final InitClient initClient;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final userId =
        await _localStorageUtils.getString(_localStorageUtils.userIdKey);
    if (userId != null) {
      options.queryParameters.addAll({'userId': userId});
    }
    return handler.next(options);
  }
}
