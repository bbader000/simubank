import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageUtils {
  FlutterSecureStorage get _instance => const FlutterSecureStorage(
        aOptions: AndroidOptions(
          encryptedSharedPreferences: true,
        ),
      );

  String get userIdKey => 'userId';

  Future<void> setString(String key, String value) =>
      _instance.write(key: key, value: value);

  Future<String?> getString(String key) => _instance.read(key: key);
  Future<String?> getUserId() => _instance.read(key: userIdKey);

  Future<void> clear({String? key}) =>
      key == null ? _instance.deleteAll() : _instance.delete(key: key);
}
