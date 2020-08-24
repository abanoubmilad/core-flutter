// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resetPasswordRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequest _$ResetPasswordRequestFromJson(Map<String, dynamic> json) {
  return ResetPasswordRequest()
    ..email = json['email'] as String
    ..newPassword = json['newPassword'] as String
    ..token = json['token'] as String;
}

Map<String, dynamic> _$ResetPasswordRequestToJson(
        ResetPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'token': instance.token,
    };
