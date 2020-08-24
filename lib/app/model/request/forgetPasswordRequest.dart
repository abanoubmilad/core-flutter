import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgetPasswordRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ForgetPasswordRequest extends JsonInterface {
  //[Required]
  //[EmailAddress]
  String email;

  ForgetPasswordRequest();

  factory ForgetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordRequestToJson(this);
}
