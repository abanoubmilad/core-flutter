// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return RegisterRequest()
    ..email = json['email'] as String
    ..fullName = json['fullName'] as String
    ..nationalId = json['nationalId'] as String
    ..phoneNumber = json['phoneNumber'] as String
    ..password = json['password'] as String;
}

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'nationalId': instance.nationalId,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
    };
