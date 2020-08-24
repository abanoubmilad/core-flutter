// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changePasswordRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRequest _$ChangePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return ChangePasswordRequest()
    ..currentPassword = json['currentPassword'] as String
    ..newPassword = json['newPassword'] as String;
}

Map<String, dynamic> _$ChangePasswordRequestToJson(
        ChangePasswordRequest instance) =>
    <String, dynamic>{
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };
