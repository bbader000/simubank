import 'package:authentication_repository/authentication_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:network_client/network_client.dart';

class AuthenticationRepository {
  AuthenticationRepository(this._api);

  final NetworkClient _api;

  Dio get _serverPublic => _api.serverPublic;
  Dio get _serverPrivate => _api.serverPrivate;

  final LocalStorageUtils _utils = LocalStorageUtils();

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final response = await _serverPublic.get<List<dynamic>>(
      AuthenticationApiPath.users,
      queryParameters: {
        'email': email,
        'password': password,
      },
    );
    if (response.data == null || response.data!.isEmpty) {
      throw PlatformException(code: 'user-not-found');
    }
    final userData = User.fromJson(response.data!.first as Json);
    await _utils.setString(_utils.userIdKey, userData.id.toString());
  }

  Future<User?> getUser() async {
    final userId = await _utils.getString(_utils.userIdKey);
    if (userId == null) return null;
    final response = await _serverPrivate.get<List<dynamic>>(
      AuthenticationApiPath.users,
    );
    if (response.data == null || response.data!.isEmpty) {
      throw PlatformException(code: 'user-not-found');
    }
    return User.fromJson(response.data!.first as Json);
  }

  Future<void> logOut() => _utils.clear();
}
