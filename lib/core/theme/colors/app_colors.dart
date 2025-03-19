import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.mainBlack,
    required this.mainWhite,
    required this.mainGrey,
    required this.mainGreen,
    required this.mainBlue,
    required this.mainRed,
    required this.mainDarkGrey,
    required this.textColorPrimary,
    required this.textColorSecondary,
    required this.textColorRed,
    required this.background,
  });

  // factory AppColors.dark() => const AppColors(
  // TODO: Implement dark theme
  // )

  factory AppColors.light() => const AppColors(
    mainBlack: LightAppColors.mainBlack,
    mainWhite: LightAppColors.mainWhite,
    mainGrey: LightAppColors.mainGrey,
    mainDarkGrey: LightAppColors.mainDarkGrey,
    mainGreen: LightAppColors.mainGreen,
    mainBlue: LightAppColors.mainBlue,
    mainRed: LightAppColors.mainRed,
    textColorPrimary: LightAppColors.textColorPrimary,
    textColorSecondary: LightAppColors.textColorSecondary,
    textColorRed: LightAppColors.textColorRed,
    background: LightAppColors.background,
  );

  final Color mainBlack;
  final Color mainWhite;
  final Color mainGrey;
  final Color mainDarkGrey;
  final Color mainGreen;
  final Color mainBlue;
  final Color mainRed;
  final Color background;
  final Color textColorRed;
  final Color textColorPrimary;
  final Color textColorSecondary;

  @override
  ThemeExtension<AppColors> copyWith({
    Color? mainBlack,
    Color? mainWhite,
    Color? mainGrey,
    Color? mainDarkGrey,
    Color? mainGreen,
    Color? mainBlue,
    Color? mainRed,
    Color? background,
    Color? textColorRed,
    Color? textColorPrimary,
    Color? textColorSecondary,
  }) {
    return AppColors(
      mainBlack: mainBlack ?? this.mainBlack,
      mainWhite: mainWhite ?? this.mainWhite,
      mainGrey: mainGrey ?? this.mainGrey,
      mainDarkGrey: mainDarkGrey ?? this.mainDarkGrey,
      mainGreen: mainGreen ?? this.mainGreen,
      mainBlue: mainBlue ?? this.mainBlue,
      mainRed: mainRed ?? this.mainRed,
      background: background ?? this.background,
      textColorRed: textColorRed ?? this.textColorRed,
      textColorPrimary: textColorPrimary ?? this.textColorPrimary,
      textColorSecondary: textColorSecondary ?? this.textColorSecondary,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other == null || other is! AppColors) return this;

    return AppColors(
      mainBlack: Color.lerp(mainBlack, other.mainBlack, t)!,
      mainWhite: Color.lerp(mainWhite, other.mainWhite, t)!,
      mainGrey: Color.lerp(mainGrey, other.mainGrey, t)!,
      mainDarkGrey: Color.lerp(mainDarkGrey, other.mainDarkGrey, t)!,
      mainGreen: Color.lerp(mainGreen, other.mainGreen, t)!,
      mainBlue: Color.lerp(mainBlue, other.mainBlue, t)!,
      mainRed: Color.lerp(mainRed, other.mainRed, t)!,
      background: Color.lerp(background, other.background, t)!,
      textColorRed: Color.lerp(textColorRed, other.textColorRed, t)!,
      textColorPrimary:
          Color.lerp(textColorPrimary, other.textColorPrimary, t)!,
      textColorSecondary:
          Color.lerp(textColorSecondary, other.textColorSecondary, t)!,
    );
  }
}
