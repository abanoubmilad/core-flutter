import 'package:core_app/app/model/request/request_interface.dart';
import 'package:core_app/app/model/role.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inviteUserRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class InviteUserRequest extends JsonInterface {
  //[Required]
  //[EmailAddress]
  String email;

  //[Required]
  String fullName;

  //[Required]
  String nationalId;

  //[Required]
  String phoneNumber;

  String role = Role.None;

  InviteUserRequest();

  factory InviteUserRequest.fromJson(Map<String, dynamic> json) =>
      _$InviteUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InviteUserRequestToJson(this);
}
