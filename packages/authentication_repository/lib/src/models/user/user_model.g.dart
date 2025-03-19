// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

$User _$$UserFromJson(Map json) => $User(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      name: json['name'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$$UserToJson($User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      if (instance.name case final value?) 'name': value,
      if (instance.profilePicture case final value?) 'profile_picture': value,
    };
