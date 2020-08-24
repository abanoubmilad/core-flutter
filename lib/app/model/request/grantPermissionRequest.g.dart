// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grantPermissionRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrantPermissionRequest _$GrantPermissionRequestFromJson(
    Map<String, dynamic> json) {
  return GrantPermissionRequest()
    ..permission = json['permission'] as int
    ..userId = json['userId'] as String;
}

Map<String, dynamic> _$GrantPermissionRequestToJson(
        GrantPermissionRequest instance) =>
    <String, dynamic>{
      'permission': instance.permission,
      'userId': instance.userId,
    };
