import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grantPermissionRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class GrantPermissionRequest extends JsonInterface {
  int permission;
  String userId;

  GrantPermissionRequest();

  factory GrantPermissionRequest.fromJson(Map<String, dynamic> json) =>
      _$GrantPermissionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GrantPermissionRequestToJson(this);
}
