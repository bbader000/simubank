// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileCubitState {

 User? get user;
/// Create a copy of ProfileCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileCubitStateCopyWith<ProfileCubitState> get copyWith => _$ProfileCubitStateCopyWithImpl<ProfileCubitState>(this as ProfileCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileCubitState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileCubitState(user: $user)';
}


}

/// @nodoc
abstract mixin class $ProfileCubitStateCopyWith<$Res>  {
  factory $ProfileCubitStateCopyWith(ProfileCubitState value, $Res Function(ProfileCubitState) _then) = _$ProfileCubitStateCopyWithImpl;
@useResult
$Res call({
 User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$ProfileCubitStateCopyWithImpl<$Res>
    implements $ProfileCubitStateCopyWith<$Res> {
  _$ProfileCubitStateCopyWithImpl(this._self, this._then);

  final ProfileCubitState _self;
  final $Res Function(ProfileCubitState) _then;

/// Create a copy of ProfileCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of ProfileCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc


class $ProfileCubitState extends ProfileCubitState {
  const $ProfileCubitState({this.user}): super._();
  

@override final  User? user;

/// Create a copy of ProfileCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$$ProfileCubitStateCopyWith<$ProfileCubitState> get copyWith => _$$ProfileCubitStateCopyWithImpl<$ProfileCubitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is $ProfileCubitState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileCubitState(user: $user)';
}


}

/// @nodoc
abstract mixin class $$ProfileCubitStateCopyWith<$Res> implements $ProfileCubitStateCopyWith<$Res> {
  factory $$ProfileCubitStateCopyWith($ProfileCubitState value, $Res Function($ProfileCubitState) _then) = _$$ProfileCubitStateCopyWithImpl;
@override @useResult
$Res call({
 User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$$ProfileCubitStateCopyWithImpl<$Res>
    implements $$ProfileCubitStateCopyWith<$Res> {
  _$$ProfileCubitStateCopyWithImpl(this._self, this._then);

  final $ProfileCubitState _self;
  final $Res Function($ProfileCubitState) _then;

/// Create a copy of ProfileCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then($ProfileCubitState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of ProfileCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
