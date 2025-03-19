import 'package:flutter/cupertino.dart';

enum Language {
  en('en');

  const Language(this.code);
  final String code;

  static Locale get fallbackLocale => Locale(Language.en.code);
  Locale get asLocale => Locale(code);
  String get text {
    switch (this) {
      case Language.en:
        return 'EN';
    }
  }
}
