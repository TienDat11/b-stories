import 'package:b_stories/core/error/error_message.dart';

class AppException implements Exception {
  final String _message;
  const AppException(this._message);

  // mes đã được generate
  String get message => ErrorMessage.get(_message);

  // mes gốc từ api trả về
  String get rawMessage => _message;
}

class ServerException extends AppException {
  const ServerException(super._message);
}

class NetworkException extends AppException {
  const NetworkException(super._message);
}

class UnexpectedException extends AppException {
  const UnexpectedException(super._message);
}
