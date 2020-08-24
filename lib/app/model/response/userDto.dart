import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'userDto.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDto extends JsonInterface {
  String id;
  String role;
  String email;
  String fullName;
  String photoUrl;
  bool emailConfirmed;
  String nationalId;
  String phoneNumber;

  bool verified;

  UserDto();

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
