class ApiListResponse<T> {
  final String message;
  final int total;
  final List<T>? data;

  ApiListResponse({
    required this.message,
    this.total = 0,
    this.data,
  });

  factory ApiListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) {
    return ApiListResponse<T>(
      message: json['message'] as String,
      total: json['data']['total'] as int? ?? 0,
      data: json['data']['data'] != null
          ? List<T>.from(
              (json['data']['data'] as List).map((item) => fromJsonT(item)))
          : null,
    );
  }

  Map<String, dynamic> toJson(Object Function(T) toJsonT) {
    return {
      'message': message,
      'total': total,
      'data': data?.map(toJsonT).toList(),
    };
  }
}
