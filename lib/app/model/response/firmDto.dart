import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'firmDto.g.dart';

@JsonSerializable(explicitToJson: true)
class FirmDto extends JsonInterface {
  int id;

  //[Required]
  String name;

  //[Required]
  String address;

  FirmDto();

  factory FirmDto.fromJson(Map<String, dynamic> json) =>
      _$FirmDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FirmDtoToJson(this);
}
