import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String email,
    String? name,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = $User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
