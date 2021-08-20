// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserAuth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) {
  return UserAuth(
    json['email'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$UserAuthToJson(UserAuth instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
