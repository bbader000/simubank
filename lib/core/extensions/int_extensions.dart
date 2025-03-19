import 'package:easy_localization/easy_localization.dart';

extension IntX on int {
  String getFormattedCurrency(String currencyKey) {
    switch (currencyKey) {
      case 'HUF':
        return NumberFormat.currency(
          locale: 'hu_HU',
          symbol: '',
          decimalDigits: 0,
        ).format(this);
      default:
        return toString();
    }
  }
}
