import 'package:core_app/app/model/response/userDto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'userProfileDto.g.dart';

@JsonSerializable(explicitToJson: true)
class UserProfileDto extends UserDto {
  String token;

  UserProfileDto();

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileDtoToJson(this);
}
