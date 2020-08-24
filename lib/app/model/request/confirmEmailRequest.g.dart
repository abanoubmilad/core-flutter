// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmEmailRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmEmailRequest _$ConfirmEmailRequestFromJson(Map<String, dynamic> json) {
  return ConfirmEmailRequest()
    ..email = json['email'] as String
    ..token = json['token'] as String;
}

Map<String, dynamic> _$ConfirmEmailRequestToJson(
        ConfirmEmailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'token': instance.token,
    };
