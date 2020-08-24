import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resetPasswordRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ResetPasswordRequest extends JsonInterface {
  //[Required]
  //[EmailAddress]
  String email;

  //[Required]
  //[DataType(DataType.Password)]
  String newPassword;

  //[Required]
  String token;

  ResetPasswordRequest();

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}
