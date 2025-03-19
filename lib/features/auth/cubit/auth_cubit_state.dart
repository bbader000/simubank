import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit_state.freezed.dart';

@freezed
abstract class AuthCubitState with _$AuthCubitState {
  const factory AuthCubitState.unauthenticated() = $_UnAuthenticatedLoadedState;
  const factory AuthCubitState.authenticated() = _AuthenticatedLoadedState;
  const factory AuthCubitState.loading() = _LoadingState;

  const AuthCubitState._();

  bool get isLoading => this is _LoadingState;
  bool get isAuthenticated => this is _AuthenticatedLoadedState;
  bool get isUnauthenticated => this is $_UnAuthenticatedLoadedState;
}
