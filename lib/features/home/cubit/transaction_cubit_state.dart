import 'package:data_repositories/data_repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_cubit_state.freezed.dart';

@freezed
abstract class TransactionCubitState with _$TransactionCubitState {
  const factory TransactionCubitState({
    @Default([]) List<Transaction> transactions,
  }) = $TransactionCubitState;

  const TransactionCubitState._();
}
