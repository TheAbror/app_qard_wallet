

import 'package:dio/dio.dart';

abstract class Http {
  static final String BASE_URL = 'http://192.168.0.102';

  Dio getHttpClient() {
    final BaseOptions options = BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: 5000
    );

    return Dio(options);
  }
}