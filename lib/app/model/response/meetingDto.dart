import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meetingDto.g.dart';

@JsonSerializable(explicitToJson: true)
class MeetingDto extends JsonInterface {
  int id;

  //[Required]
  String name;

  //[Required]
  //[DataType(DataType.Date)]
  DateTime startAt;

  //[Range(10, 720)]
  int durationInMins = 120;

  bool active = true;

  int bookedCount;

  //    [Range(1, int.MaxValue)]
  int maxAllowedBookings = 50;

  MeetingDto();

  factory MeetingDto.fromJson(Map<String, dynamic> json) =>
      _$MeetingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MeetingDtoToJson(this);
}
