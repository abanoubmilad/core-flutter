import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loginRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginRequest extends JsonInterface {
  //[Required]
  //[EmailAddress]
  String email;

  //[Required]
  //[DataType(DataType.Password)]
  String password;

  LoginRequest();

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
