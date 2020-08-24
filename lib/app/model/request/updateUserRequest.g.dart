// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateUserRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return UpdateUserRequest()
    ..id = json['id'] as String
    ..fullName = json['fullName'] as String
    ..nationalId = json['nationalId'] as String
    ..phoneNumber = json['phoneNumber'] as String;
}

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'nationalId': instance.nationalId,
      'phoneNumber': instance.phoneNumber,
    };
