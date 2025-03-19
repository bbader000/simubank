import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_client/network_client.dart';
import 'package:test_app/features/features.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const AuthCubitState.loading()) {
    _checkIfAuthenticated();
  }

  final AuthenticationRepository _authenticationRepository;

  final _localStorage = LocalStorageUtils();

  Future<void> _checkIfAuthenticated() async {
    final userId = await _localStorage.getUserId();
    if (userId == null) {
      emit(const AuthCubitState.unauthenticated());
    } else {
      emit(const AuthCubitState.authenticated());
    }
  }

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      if (state.isLoading) return;
      emit(const AuthCubitState.loading());
      await _authenticationRepository.loginWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(const AuthCubitState.authenticated());
    } catch (e) {
      emit(const AuthCubitState.unauthenticated());
      rethrow;
    }
  }

  Future<void> logout() async {
    if (state.isLoading) return;
    emit(const AuthCubitState.loading());
    await _authenticationRepository.logOut();
    emit(const AuthCubitState.unauthenticated());
  }
}
