import 'package:data_repositories/data_repositories.dart';
import 'package:dio/dio.dart';
import 'package:network_client/network_client.dart';

class TransactionsRepository {
  TransactionsRepository(this._client);

  final NetworkClient _client;

  Dio get serverPrivate => _client.serverPrivate;

  Future<List<Transaction>?> getTransactions({
    required int limit,
    required int pageKey,
  }) async {
    final response = await serverPrivate.get<List<dynamic>>(
      TransactionsApiPaths.transactions,
      queryParameters: {
        '_limit': limit,
        '_page': pageKey,
      },
    );
    if (response.data == null) return [];
    return response.data!.map((e) => Transaction.fromJson(e as Json)).toList();
  }
}
