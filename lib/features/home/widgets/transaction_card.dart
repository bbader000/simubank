import 'package:data_repositories/data_repositories.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/core.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({required this.transaction, super.key});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: colors.mainGrey)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Data(transaction: transaction),
          _Amount(transaction: transaction),
        ],
      ),
    );
  }
}

class _Data extends StatelessWidget {
  const _Data({required this.transaction});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ParagraphText(context.formatDate(transaction.date, 'yyyy-MM-dd')),
          const Gap(5),
          ParagraphText(transaction.merchant),
        ],
      ),
    );
  }
}

class _Amount extends StatelessWidget {
  const _Amount({required this.transaction});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final currency = transaction.currency;
    final textColor =
        transaction.amount > 0 ? colors.mainGreen : colors.mainRed;
    return H2Text(
      '${transaction.amount.getFormattedCurrency(currency)} $currency',
      color: textColor,
    );
  }
}
