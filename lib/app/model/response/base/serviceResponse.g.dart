// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serviceResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceResponse<T> _$ServiceResponseFromJson<T>(Map<String, dynamic> json) {
  return ServiceResponse<T>()
    ..error = json['error'] as String
    ..code = json['code'] as int
    ..data = JsonGenericConverter<T>().fromJson(json['data']);
}

Map<String, dynamic> _$ServiceResponseToJson<T>(ServiceResponse<T> instance) =>
    <String, dynamic>{
      'error': instance.error,
      'code': instance.code,
      'data': JsonGenericConverter<T>().toJson(instance.data),
    };
