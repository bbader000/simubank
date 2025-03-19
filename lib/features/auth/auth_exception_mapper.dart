import 'package:easy_localization/easy_localization.dart';
import 'package:test_app/gen/locale_keys.g.dart';

class AuthExceptionMapper {
  static String toMessageFromException(String code) {
    switch (code) {
      case 'user-not-found':
        return LocaleKeys.auth_exceptions_userNotFound.tr();
      default:
        return LocaleKeys.exceptions_unknownError.tr();
    }
  }
}
