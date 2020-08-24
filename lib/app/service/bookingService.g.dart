// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookingService.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _BookingService implements BookingService {
  _BookingService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  getById(meetingId, id) async {
    ArgumentError.checkNotNull(meetingId, 'meetingId');
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/meetings/$meetingId/bookings/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<BookingDto>.fromJson(_result.data);
    return value;
  }

  @override
  get(meetingId) async {
    ArgumentError.checkNotNull(meetingId, 'meetingId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/meetings/$meetingId/bookings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<PagedList<BookingDto>>.fromJson(_result.data);
    return value;
  }

  @override
  update(meetingId, request) async {
    ArgumentError.checkNotNull(meetingId, 'meetingId');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/meetings/$meetingId/bookings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<BookingDto>.fromJson(_result.data);
    return value;
  }

  @override
  add(meetingId, request) async {
    ArgumentError.checkNotNull(meetingId, 'meetingId');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/meetings/$meetingId/bookings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<BookingDto>.fromJson(_result.data);
    return value;
  }

  @override
  delete(meetingId, request) async {
    ArgumentError.checkNotNull(meetingId, 'meetingId');
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/meetings/$meetingId/bookings',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ServiceResponse<BookingDto>.fromJson(_result.data);
    return value;
  }
}
