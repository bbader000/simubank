import 'package:flutter/material.dart';

abstract class UIConstants {
  static const borderRadiusBottom16 = BorderRadius.vertical(
    bottom: Radius.circular(16),
  );

  static const borderRadiusAll8 = BorderRadius.all(Radius.circular(8));
  static const borderRadiusAll12 = BorderRadius.all(Radius.circular(12));
  static const borderRadiusAll15 = BorderRadius.all(Radius.circular(15));
  static const borderRadiusAll16 = BorderRadius.all(Radius.circular(16));
  static const borderRadiusAll32 = BorderRadius.all(Radius.circular(32));

  static const paddingHorizontal4 = EdgeInsets.symmetric(horizontal: 4);
  static const paddingHorizontal8 = EdgeInsets.symmetric(horizontal: 8);
  static const paddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const paddingHorizontal32 = EdgeInsets.symmetric(horizontal: 32);
  static const paddingHorizontal64 = EdgeInsets.symmetric(horizontal: 64);
  static const paddingAll12 = EdgeInsets.all(12);
  static const paddingAll16 = EdgeInsets.all(16);
}
