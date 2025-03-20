import 'package:flutter/widgets.dart';
import 'package:test_app/core/core.dart';

abstract class LightTextStyles {
  static const _color = LightAppColors.textColorPrimary;
  static const h1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: _color,
  );

  static const h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: _color,
  );

  static const button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static const paragraph = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _color,
  );

  static const caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _color,
  );
}

abstract class DarkTextStyles {
  static const _color = DarkAppColors.textColorPrimary;
  static const h1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: _color,
  );

  static const h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: _color,
  );

  static const button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static const paragraph = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _color,
  );

  static const caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: _color,
  );
}
