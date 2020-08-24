// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagedList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedList<T> _$PagedListFromJson<T>(Map<String, dynamic> json) {
  return PagedList<T>()
    ..items = (json['items'] as List)
        ?.map(JsonGenericConverter<T>().fromJson)
        ?.toList()
    ..currentPage = json['currentPage'] as int
    ..totalPages = json['totalPages'] as int
    ..pageSize = json['pageSize'] as int
    ..totalCount = json['totalCount'] as int
    ..hasPrevious = json['hasPrevious'] as bool
    ..hasNext = json['hasNext'] as bool;
}

Map<String, dynamic> _$PagedListToJson<T>(PagedList<T> instance) =>
    <String, dynamic>{
      'items': instance.items?.map(JsonGenericConverter<T>().toJson)?.toList(),
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'hasPrevious': instance.hasPrevious,
      'hasNext': instance.hasNext,
    };
