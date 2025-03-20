import 'package:data_repositories/data_repositories.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/home/transaction_extensions.dart';
import 'package:test_app/gen/locale_keys.g.dart';

enum TransactionDetailType {
  date,
  merchant,
  category,
  toAccount;

  String get title {
    switch (this) {
      case date:
        return LocaleKeys.transactions_date.tr();
      case merchant:
        return LocaleKeys.transactions_merchant.tr();
      case category:
        return LocaleKeys.transactions_category.tr();
      case toAccount:
        return LocaleKeys.transactions_toAccount.tr();
    }
  }
}

class TransactionDetailedContent extends StatelessWidget {
  const TransactionDetailedContent({required this.transaction, super.key});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final amountTextColor =
        transaction.amount.isNegative ? colors.mainRed : colors.mainGreen;
    return Column(
      children: [
        Row(
          children: [
            H2Text(transaction.merchant),
            const Gap(10),
            Expanded(
              child: H2Text(
                transaction.formattedAmount,
                color: amountTextColor,
                textAlign: TextAlign.end,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Gap(20),
        Column(
          spacing: 10,
          children:
              TransactionDetailType.values
                  .map(
                    (type) => _DataItem(
                      title: type.title,
                      value: transaction.getValueByType(
                        type: type,
                        context: context,
                      ),
                    ),
                  )
                  .toList(),
        ),
      ],
    );
  }
}

class _DataItem extends StatelessWidget {
  const _DataItem({required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ParagraphText(title),
        const Gap(10),
        Expanded(child: ParagraphText(value, textAlign: TextAlign.end)),
      ],
    );
  }
}
