// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookingDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) {
  return BookingDto()
    ..id = json['id'] as int
    ..requestedAt = json['requestedAt'] == null
        ? null
        : DateTime.parse(json['requestedAt'] as String)
    ..approved = json['approved'] as bool
    ..approvedAt = json['approvedAt'] == null
        ? null
        : DateTime.parse(json['approvedAt'] as String)
    ..attended = json['attended'] as bool
    ..attendedAt = json['attendedAt'] == null
        ? null
        : DateTime.parse(json['attendedAt'] as String);
}

Map<String, dynamic> _$BookingDtoToJson(BookingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requestedAt': instance.requestedAt?.toIso8601String(),
      'approved': instance.approved,
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'attended': instance.attended,
      'attendedAt': instance.attendedAt?.toIso8601String(),
    };
