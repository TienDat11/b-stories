import 'package:b_stories/core/error/app_exception.dart';
import 'package:dio/dio.dart';

extension DioErrorX on DioException {
  AppException toAppException() {
    if (type == DioExceptionType.connectionTimeout ||
        type == DioExceptionType.receiveTimeout ||
        type == DioExceptionType.sendTimeout) {
      return AppException("ConnectionTimeout");
    }

    if (type == DioExceptionType.badResponse) {
      final statusCode = response?.statusCode ?? 0;
      final data = response?.data;
      final rawMessage = data is Map && data['message'] is String
          ? data['message'] as String
          : 'ServerUnknownError';

      if (statusCode >= 500) {
        return AppException("ServerError");
      }
      return AppException(rawMessage);
    }

    if (type == DioExceptionType.cancel) {
      return AppException("RequestCancelled");
    }

    if (type == DioExceptionType.unknown) {
      return AppException("NoInternetConnection");
    }

    return AppException("UnexpectedError");
  }
}
