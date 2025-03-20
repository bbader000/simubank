import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/core/core.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        primaryColor: LightAppColors.mainBlack,
      ),
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
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: LightAppColors.mainBlack,
      ),
      extensions: [AppTextStyles.light(), AppColors.light()],
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      cupertinoOverrideTheme: const NoDefaultCupertinoThemeData(
        primaryColor: DarkAppColors.mainBlack,
      ),
      splashColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: DarkAppColors.mainWhite,
        surfaceTintColor: Colors.transparent,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: DarkAppColors.mainBlack,
      ),
      extensions: [AppTextStyles.dark(), AppColors.dark()],
    );
  }
}
