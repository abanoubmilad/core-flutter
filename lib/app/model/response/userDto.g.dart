// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return UserDto()
    ..id = json['id'] as String
    ..role = json['role'] as String
    ..email = json['email'] as String
    ..fullName = json['fullName'] as String
    ..photoUrl = json['photoUrl'] as String
    ..emailConfirmed = json['emailConfirmed'] as bool
    ..nationalId = json['nationalId'] as String
    ..phoneNumber = json['phoneNumber'] as String
    ..verified = json['verified'] as bool;
}

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'email': instance.email,
      'fullName': instance.fullName,
      'photoUrl': instance.photoUrl,
      'emailConfirmed': instance.emailConfirmed,
      'nationalId': instance.nationalId,
      'phoneNumber': instance.phoneNumber,
      'verified': instance.verified,
    };
