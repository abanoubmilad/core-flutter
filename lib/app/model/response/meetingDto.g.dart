// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meetingDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetingDto _$MeetingDtoFromJson(Map<String, dynamic> json) {
  return MeetingDto()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..startAt = json['startAt'] == null
        ? null
        : DateTime.parse(json['startAt'] as String)
    ..durationInMins = json['durationInMins'] as int
    ..active = json['active'] as bool
    ..bookedCount = json['bookedCount'] as int
    ..maxAllowedBookings = json['maxAllowedBookings'] as int;
}

Map<String, dynamic> _$MeetingDtoToJson(MeetingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startAt': instance.startAt?.toIso8601String(),
      'durationInMins': instance.durationInMins,
      'active': instance.active,
      'bookedCount': instance.bookedCount,
      'maxAllowedBookings': instance.maxAllowedBookings,
    };
