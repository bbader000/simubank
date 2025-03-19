import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.h1,
    required this.h2,
    required this.button,
    required this.paragraph,
    required this.caption,
  });

  factory AppTextStyles.light() => const AppTextStyles(
    h1: LightTextStyles.h1,
    h2: LightTextStyles.h2,
    button: LightTextStyles.button,
    paragraph: LightTextStyles.paragraph,
    caption: LightTextStyles.caption,
  );

  // factory AppTextStyles.dark() => const AppTextStyles(
  // TODO: Implement dark theme
  //     );

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle button;
  final TextStyle paragraph;
  final TextStyle caption;

  @override
  ThemeExtension<AppTextStyles> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? button,
    TextStyle? paragraph,
    TextStyle? caption,
  }) {
    return AppTextStyles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      button: button ?? this.button,
      paragraph: paragraph ?? this.paragraph,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<AppTextStyles> lerp(
    covariant ThemeExtension<AppTextStyles>? other,
    double t,
  ) {
    if (other == null || other is! AppTextStyles) return this;

    return AppTextStyles(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
      paragraph: TextStyle.lerp(paragraph, other.paragraph, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }
}
