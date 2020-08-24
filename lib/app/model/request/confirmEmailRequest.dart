import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirmEmailRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class ConfirmEmailRequest extends JsonInterface {
  //[Required]
  //[EmailAddress]
  String email;

  //[Required]
  String token;

  ConfirmEmailRequest();

  factory ConfirmEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmEmailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmEmailRequestToJson(this);
}
