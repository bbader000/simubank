import 'package:data_repositories/data_repositories.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/home/widgets/widgets.dart';

extension TransactionX on Transaction {
  String get formattedAmount =>
      '${amount.getFormattedCurrency(currency)} $currency';

  String getValueByType({
    required TransactionDetailType type,
    required BuildContext context,
  }) {
    switch (type) {
      case TransactionDetailType.date:
        return context.formatDate(date, 'yyyy-MM-dd');
      case TransactionDetailType.merchant:
        return merchant;
      case TransactionDetailType.category:
        return category;
      case TransactionDetailType.toAccount:
        return toAccount;
    }
  }
}
