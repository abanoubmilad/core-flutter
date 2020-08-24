import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bookingDto.g.dart';

@JsonSerializable(explicitToJson: true)
class BookingDto extends JsonInterface {
  int id;

  DateTime requestedAt;

  bool approved;
  DateTime approvedAt;

  bool attended;
  DateTime attendedAt;

  BookingDto();

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookingDtoToJson(this);
}
