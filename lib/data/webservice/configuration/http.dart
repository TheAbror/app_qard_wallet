
import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';

abstract class Http {
  static final String BASE_URL = 'http://192.168.0.102:8080';
  static final bool DEBUG = true;

  Dio getHttpClient() {

    final BaseOptions options = BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: 5000,
      receiveTimeout: 5000
    );

    final Dio dio = Dio(options);
    dio.interceptors.add(HttpFormatter());

    return dio;
  }
}
