// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firmDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirmDto _$FirmDtoFromJson(Map<String, dynamic> json) {
  return FirmDto()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..address = json['address'] as String;
}

Map<String, dynamic> _$FirmDtoToJson(FirmDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };
