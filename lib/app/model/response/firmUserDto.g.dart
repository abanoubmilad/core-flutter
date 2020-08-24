// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firmUserDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirmUserDto _$FirmUserDtoFromJson(Map<String, dynamic> json) {
  return FirmUserDto()
    ..firm = json['firm'] == null
        ? null
        : FirmDto.fromJson(json['firm'] as Map<String, dynamic>)
    ..user = json['user'] == null
        ? null
        : UserDto.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FirmUserDtoToJson(FirmUserDto instance) =>
    <String, dynamic>{
      'firm': instance.firm?.toJson(),
      'user': instance.user?.toJson(),
    };
