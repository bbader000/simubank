import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/core/core.dart';

extension BuildContextExtensions on BuildContext {
  Language get parsedLocale {
    switch (locale.languageCode) {
      case 'en':
        return Language.en;
      default:
        return Language.en;
    }
  }

  ThemeData get _theme => Theme.of(this);
  AppColors get colors => _theme.extension<AppColors>()!;
  AppTextStyles get textStyles => _theme.extension<AppTextStyles>()!;

  double get topPadding => MediaQuery.paddingOf(this).top;
  double get bottomPadding {
    final bottom = MediaQuery.paddingOf(this).bottom;
    return bottom == 0 ? 12 : bottom;
  }

  SystemUiOverlayStyle get systemUiOverlayStyle =>
      _theme.appBarTheme.systemOverlayStyle!;

  String formatDate(DateTime date, String pattern) =>
      DateFormat(pattern, locale.languageCode).format(date);

  void showSnackBar(Widget content) {
    ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: content,
          elevation: 0,
          shape: const RoundedRectangleBorder(),
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          behavior: SnackBarBehavior.floating,
        ),
      );
  }

  Future<T?> presentSheet<T>({
    required String title,
    required Widget content,
  }) => showModalBottomSheet<T>(
    context: this,
    isScrollControlled: true,
    builder: (context) => BottomSheetContainer(title: title, content: content),
  );

  void showErrorSnackBar(String message) {
    showSnackBar(Toast.error(text: message, backgroundColor: colors.mainRed));
  }
}
