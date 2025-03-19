import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_cubit_state.freezed.dart';

@freezed
abstract class ProfileCubitState with _$ProfileCubitState {
  const factory ProfileCubitState({User? user}) = $ProfileCubitState;

  const ProfileCubitState._();
}
