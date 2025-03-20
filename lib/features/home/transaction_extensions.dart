import 'package:data_repositories/data_repositories.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/home/widgets/widgets.dart';

const _kShortAccountNumberLength = 16;

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
        return formattedAccountNumber;
    }
  }

  String get formattedAccountNumber {
    final isLongFormat = toAccount.length > _kShortAccountNumberLength;
    if (isLongFormat) {
      final buffer = StringBuffer();
      for (var i = 0; i < toAccount.length; i += 8) {
        if (i > 0) buffer.write('-');
        buffer.write(
          toAccount.substring(
            i,
            i + 8 > toAccount.length ? toAccount.length : i + 8,
          ),
        );
      }
      return buffer.toString();
    }

    return '${toAccount.substring(0, 8)}-${toAccount.substring(8)}';
  }
}
