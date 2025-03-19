import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/features.dart';

class ProfileCubit extends Cubit<ProfileCubitState> {
  ProfileCubit({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const ProfileCubitState()) {
    getUser();
  }

  final AuthenticationRepository _authenticationRepository;

  Future<void> getUser() async {
    final user = await _authenticationRepository.getUser();
    emit(state.copyWith(user: user));
  }
}
