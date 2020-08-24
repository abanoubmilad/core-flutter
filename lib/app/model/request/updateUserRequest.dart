import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'updateUserRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class UpdateUserRequest extends JsonInterface {
  //[Required]
  String id;

  //[Required]
  String fullName;

  //[Required]
  String nationalId;

  //[Required]
  String phoneNumber;

  UpdateUserRequest();

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);
}
