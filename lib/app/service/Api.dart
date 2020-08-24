import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio buildDio({String auth = '', int timeOutInMillis = 15000}) {
  final dio = Dio();
  dio.options.headers = {
    HttpHeaders.authorizationHeader: auth,
    HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    HttpHeaders.acceptHeader: "application/json",
    HttpHeaders.acceptCharsetHeader: "charset=utf-8"
  };
  dio.options.receiveTimeout = timeOutInMillis;
  dio.options.connectTimeout = timeOutInMillis;
  dio.options.sendTimeout = timeOutInMillis;

  dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90));

  return dio;
}
