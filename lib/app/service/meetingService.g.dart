// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meetingService.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _MeetingService implements MeetingService {
  _MeetingService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  getById(firmId, id) async {
    ArgumentError.checkNotNull(firmId, 'firmId');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/firms/$firmId/meetings/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<MeetingDto>.fromJson(_result.data);
    return value;
  }

  @override
  get(firmId) async {
    ArgumentError.checkNotNull(firmId, 'firmId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/firms/$firmId/meetings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<PagedList<MeetingDto>>.fromJson(_result.data);
    return value;
  }

  @override
  update(firmId, request) async {
    ArgumentError.checkNotNull(firmId, 'firmId');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/firms/$firmId/meetings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<MeetingDto>.fromJson(_result.data);
    return value;
  }

  @override
  add(firmId, request) async {
    ArgumentError.checkNotNull(firmId, 'firmId');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/firms/$firmId/meetings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<MeetingDto>.fromJson(_result.data);
    return value;
  }

  @override
  delete(firmId, request) async {
    ArgumentError.checkNotNull(firmId, 'firmId');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/firms/$firmId/meetings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<MeetingDto>.fromJson(_result.data);
    return value;
  }
}
