import 'package:dio/dio.dart';

T castOrNull<T>(x) => x is T ? x : null;

int serviceErrorToCode(Object obj) {
  final response = castOrNull<DioError>(obj.runtimeType)?.response;
  if (response != null) return response.statusCode;
  return 0;
}
