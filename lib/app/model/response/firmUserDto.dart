import 'package:core_app/app/model/request/request_interface.dart';
import 'package:core_app/app/model/response/userDto.dart';
import 'package:json_annotation/json_annotation.dart';

import 'firmDto.dart';

part 'firmUserDto.g.dart';

@JsonSerializable(explicitToJson: true)
class FirmUserDto extends JsonInterface {
  FirmDto firm;
  UserDto user;

  FirmUserDto();

  factory FirmUserDto.fromJson(Map<String, dynamic> json) =>
      _$FirmUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FirmUserDtoToJson(this);
}
