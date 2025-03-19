import 'package:data_repositories/data_repositories.dart';
import 'package:dio/dio.dart';
import 'package:network_client/network_client.dart';

class TransactionsRepository {
  TransactionsRepository(this._client);

  final NetworkClient _client;

  Dio get serverPrivate => _client.serverPrivate;

  Future<List<Transaction>?> getTransactions() async {
    final response = await serverPrivate.get<List<Json>>(
      TransactionsApiPaths.transactions,
    );
    if (response.data == null) return [];
    return response.data!.map(Transaction.fromJson).toList();
  }
}
