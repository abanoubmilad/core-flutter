import 'package:core_app/app/common/json_generic_converter.dart';
import 'package:core_app/app/model/response/base/baseServiceResponse.dart';
import 'package:json_annotation/json_annotation.dart';

part 'serviceResponse.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceResponse<T> extends BaseServiceResponse {
  @JsonGenericConverter()
  T data;

  ServiceResponse();

  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceResponseToJson(this);
}
