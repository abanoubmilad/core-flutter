import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'facebookAuthRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class FacebookAuthRequest extends JsonInterface {
  //[Required]
  String token;

  FacebookAuthRequest();

  factory FacebookAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$FacebookAuthRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FacebookAuthRequestToJson(this);
}
