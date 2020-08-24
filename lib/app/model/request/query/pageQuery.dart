import 'package:core_app/app/model/request/request_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pageQuery.g.dart';

@JsonSerializable(explicitToJson: true)
class PageQuery extends JsonInterface {
  int pageSize = 20;

  int pageNumber = 1;

  PageQuery();

  factory PageQuery.fromJson(Map<String, dynamic> json) =>
      _$PageQueryFromJson(json);

  Map<String, dynamic> toJson() => _$PageQueryToJson(this);
}
