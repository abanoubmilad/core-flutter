// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageQuery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageQuery _$PageQueryFromJson(Map<String, dynamic> json) {
  return PageQuery()
    ..pageSize = json['pageSize'] as int
    ..pageNumber = json['pageNumber'] as int;
}

Map<String, dynamic> _$PageQueryToJson(PageQuery instance) => <String, dynamic>{
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
    };
