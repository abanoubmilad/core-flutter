import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'changePasswordRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangePasswordRequest extends JsonInterface {
  //[Required]
  //[DataType(DataType.Password)]
  String currentPassword;

  //[Required]
  //[DataType(DataType.Password)]
  String newPassword;

  ChangePasswordRequest();

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
