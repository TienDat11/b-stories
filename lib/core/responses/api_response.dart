class ApiResponse<T> {
  final String message;
  final T? data;

  ApiResponse({
    required this.message,
    this.data,
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T? Function(dynamic) fromJsonT,
  ) {
    return ApiResponse<T>(
      message: json['message'] as String,
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson(Object? Function(T?) toJsonT) {
    return {
      'message': message,
      'data': toJsonT(data),
    };
  }
}
