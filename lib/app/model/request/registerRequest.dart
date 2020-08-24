import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'registerRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class RegisterRequest extends JsonInterface {
  //[Required]
  //[EmailAddress]
  String email;

  //[Required]
  String fullName;

  //[Required]
  String nationalId;

  //[Required]
  String phoneNumber;

  //[Required]
  //[DataType(DataType.Password)]
  String password;

  RegisterRequest();

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
