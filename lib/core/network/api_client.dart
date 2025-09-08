import 'dart:convert';

import 'package:b_stories/core/network/remote_config.dart';
import 'package:dio/dio.dart';

import 'package:logger/web.dart';

class ApiClient {
  late final Dio _dio;
  //config logger
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 3,
      lineLength: 100,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  ApiClient() {
    _dio = Dio();

    _dio
      ..options.baseUrl = RemoteConfig.kBaseURL
      ..options.headers = {}
      ..options.connectTimeout = const Duration(seconds: 30)
      ..options.receiveTimeout = const Duration(seconds: 30)
      ..options.responseType = ResponseType.json;

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          _logRequest(options);
          return handler.next(options);
        },
        onResponse: (response, handler) {
          _logResponse(response);
          handler.next(response);
        },
        onError: (DioException error, handler) async {
          _logError(error);

          handler.next(error);
        },
      ),
    );
  }

  //request
  void _logRequest(RequestOptions options) {
    _logger.i('📤 [${options.method}] ${options.uri}');
    if (options.data != null) {
      try {
        final prettyData = const JsonEncoder.withIndent(
          '  ',
        ).convert(options.data);
        _logger.d('📦 Payload:\n$prettyData');
      } catch (_) {
        _logger.d('📦 Payload: ${options.data}');
      }
    }
  }

  //esponse
  void _logResponse(Response response) {
    _logger.i('✅ Response [${response.statusCode}]');
    try {
      final pretty = const JsonEncoder.withIndent('  ').convert(response.data);
      _logger.d(pretty);
    } catch (_) {
      _logger.d(response.data.toString());
    }
  }

  //error
  void _logError(DioException error) {
    _logger.e('❌ Error: ${error.message}');
    if (error.response != null) {
      try {
        final pretty = const JsonEncoder.withIndent(
          '  ',
        ).convert(error.response?.data);
        _logger.w(pretty);
      } catch (_) {
        _logger.w(error.response.toString());
      }
    }
  }

  /// * GET
  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * POST
  Future<Response<dynamic>> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * PUT
  Future<Response<dynamic>> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * PATCH
  Future<Response<dynamic>> patch(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * DELETE
  Future<Response<dynamic>> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }
}
