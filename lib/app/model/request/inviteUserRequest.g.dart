// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inviteUserRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InviteUserRequest _$InviteUserRequestFromJson(Map<String, dynamic> json) {
  return InviteUserRequest()
    ..email = json['email'] as String
    ..fullName = json['fullName'] as String
    ..nationalId = json['nationalId'] as String
    ..phoneNumber = json['phoneNumber'] as String
    ..role = json['role'] as String;
}

Map<String, dynamic> _$InviteUserRequestToJson(InviteUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'nationalId': instance.nationalId,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
    };
