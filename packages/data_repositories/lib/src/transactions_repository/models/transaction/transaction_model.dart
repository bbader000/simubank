import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required int userId,
    required DateTime date,
    required String merchant,
    required int amount,
    required String currency,
    required String description,
    required String category,
    @JsonKey(name: 'from_account') required String fromAccount,
    @JsonKey(name: 'to_account') required String toAccount,
  }) = $Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
