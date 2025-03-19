import 'package:data_repositories/data_repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/features.dart';

class TransactionCubit extends Cubit<TransactionCubitState> {
  TransactionCubit({required TransactionsRepository transactionsRepository})
    : _transactionsRepository = transactionsRepository,
      super(const TransactionCubitState());

  final TransactionsRepository _transactionsRepository;

  Future<List<Transaction>> getTransactions({
    required int pageKey,
    required int pageSize,
  }) async {
    final transactions = await _transactionsRepository.getTransactions(
      limit: pageSize,
      pageKey: pageKey,
    );
    if (transactions == null) return [];
    return transactions;
  }
}
