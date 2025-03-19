import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/core/core.dart';

abstract class AppTheme {
  static ThemeData get light {
    final highlightColor = const Color.fromARGB(
      255,
      122,
      126,
      113,
    ).withValues(alpha: 0.2);
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: LightAppColors.mainWhite,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        primaryColor: LightAppColors.mainBlack,
      ),
      highlightColor: highlightColor,
      splashColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: LightAppColors.mainWhite,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: LightAppColors.mainWhite,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(highlightColor: highlightColor),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: LightAppColors.mainBlack,
      ),
      extensions: [AppTextStyles.light(), AppColors.light()],
    );
  }
}
