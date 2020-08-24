import 'package:json_annotation/json_annotation.dart';

part 'baseServiceResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseServiceResponse {
  String error;
  int code;

  BaseServiceResponse();

  factory BaseServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseServiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseServiceResponseToJson(this);
}
