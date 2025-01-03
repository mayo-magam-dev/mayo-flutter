import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AppDio {
  AppDio._internal();

  static Dio? _instance;

  static Dio getInstance() => _instance ??= _AppDio();
}

class _AppDio with DioMixin implements Dio {
  _AppDio() {
    httpClientAdapter = IOHttpClientAdapter();
    options = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveDataWhenStatusError: true,
    );

    interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      )
    ]);
  }
}

final String _baseUrl =
    'https://${dotenv.env['API_URL']}-default-rtdb.asia-southeast1.firebasedatabase.app';
