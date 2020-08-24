import 'package:core_app/app/common/json_generic_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pagedList.g.dart';

@JsonSerializable(explicitToJson: true)
class PagedList<T> {
  @JsonGenericConverter()
  List<T> items;

  int currentPage;
  int totalPages;
  int pageSize;
  int totalCount;

  bool hasPrevious;
  bool hasNext;

  PagedList();

  factory PagedList.fromJson(Map<String, dynamic> json) =>
      _$PagedListFromJson(json);

  Map<String, dynamic> toJson() => _$PagedListToJson(this);
}
