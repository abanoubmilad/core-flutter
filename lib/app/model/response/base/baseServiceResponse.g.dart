// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseServiceResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseServiceResponse _$BaseServiceResponseFromJson(Map<String, dynamic> json) {
  return BaseServiceResponse()
    ..error = json['error'] as String
    ..code = json['code'] as int;
}

Map<String, dynamic> _$BaseServiceResponseToJson(
        BaseServiceResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'code': instance.code,
    };
