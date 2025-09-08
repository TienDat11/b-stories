class ErrorMessage {
  static final Map<String, String> _error = {
    //loxi tuwf backend
    'UserNotFound':
        'Số điện thoại chưa đăng ký tài khoản. Vui lòng kiểm tra lại thông tin!',
    'PasswordDoesNotMatch':
        'Mật khẩu không chính xác. Vui lòng nhập lại mật khẩu!',
    'PhoneNumberNotFound': 'Không tìm thấy số điện thoại',
    'PhoneNumberMustContainOnlyDigits': 'Số điện thoại không hợp lệ',
    'LicensePlateAndVehicleTypeAreRequiredForDrivers':
        'Thiếu biển số hoặc loại xe (cho tài xế)',
    'PhoneNumberAlreadyRegistered': 'Số điện thoại đã được đăng ký',
    'ThisLoginMethodIsOnlyForPartners':
        'Phương thức đăng nhập này chỉ dành cho đối tác',
    'InvalidFullName': 'Họ và tên không hợp lệ',
    'ThisLoginMethodIsOnlyForDrivers':
        'Phương thức đăng nhập này chỉ dành cho tài xế',
    'UserMustBeActiveToUpdateSubscription':
        'Người dùng phải hoạt động để cập nhật gói',
    'SubscriptionUpdateOnlyAvailableForDrivers':
        'Chỉ tài xế mới được cập nhật gói',
    'ReasonIsRequiredWhenLockingUser': 'Cần cung cấp lý do khi khoá người dùng',
    'OnlyDriverCanHaveSubscription': 'Chỉ tài xế có thể có gói dịch vụ',
    'UnauthorizedToUpdateSubscription': 'Không có quyền cập nhật gói',
    'UnauthorizedToDeleteUser': 'Không có quyền xoá người dùng',
    'UnauthorizedToViewUser': 'Không có quyền xem người dùng',
    'UnauthorizedToUpdateUser': 'Không có quyền cập nhật người dùng',
    'OnlyDriverCanUpdateVehicleInfo': 'Chỉ tài xế có thể cập nhật thông tin xe',
    'UserPermissionDenied': 'Không có quyền truy cập',
    'WalletNotFound': 'Không tìm thấy ví',
    'WalletHistoryNotFound': 'Không tìm thấy lịch sử ví',
    'WalletHistoryReceiverInfoRequired':
        'Thiếu thông tin người nhận trong lịch sử ví',
    'TransactionNotFound': 'Không tìm thấy giao dịch',
    'TransactionIsCompleted': 'Giao dịch đã hoàn tất',
    'WalletNotEnoughPoint': 'Ví không đủ điểm',
    'FileIsTooLarge': 'Tệp quá lớn',
    'UserQrFileNotFound': 'Không tìm thấy mã QR của người dùng',
    'QrPaymentNotFound': 'Không tìm thấy thông tin thanh toán QR',
    'RoomNotFound': 'Không tìm thấy phòng',
    'MessageNotFound': 'Không tìm thấy tin nhắn',
    'LocationNotFound': 'Không tìm thấy vị trí',
    'NotificationNotFound': 'Không tìm thấy thông báo',
    'AlertDeviceIdInvalid': 'ID thiết bị cảnh báo không hợp lệ',
    'AlertUnableToSend': 'Không thể gửi cảnh báo',
    'TripNotFound': 'Không tìm thấy chuyến đi',
    'TripStatusIsWrong': 'Trạng thái chuyến đi không hợp lệ',
    'TripReasonRequired': 'Cần lý do cho chuyến đi',
    'RoleNotFound': 'Không tìm thấy vai trò',
    'PermissionNotFound': 'Không tìm thấy quyền',
    'ObjectsNotFound': 'Không tìm thấy đối tượng',
    'FinishTheTripBeforeAcceptingNew':
        'Hoàn tất chuyến đi hiện tại trước khi nhận chuyến mới',
    'TransactionIsCanceled': 'Giao dịch đã bị huỷ',
    'ExistsTripDepositInAnHour': 'Đã tồn tại cọc trong vòng 1 giờ',
    'TripAlreadyExists': 'Chuyến đi đã tồn tại',
    'StatusPartnerNotAllow':
        'Trạng thái của đối tác không cho phép thao tác này',
    'YouDontHavePermissionToAddThisTrip':
        'Bạn không có quyền thêm chuyến đi này',
    'NotEnoughPoint': 'Không đủ điểm',
    'TripConflictTime': 'Chuyến đi bị trùng thời gian',
    'Invalid or expired OTP': 'Nhập sai Mã OTP. Vui lòng thử lại!',

    // Lỗi nội bộ
    'ConnectionTimeout': 'Kết nối quá lâu, vui lòng thử lại',
    'RequestCancelled': 'Yêu cầu đã bị huỷ',
    'NoInternetConnection': 'Không có kết nối Internet',
    'UnexpectedError': 'Đã xảy ra lỗi không xác định vui lòng thử lại sau',
    'ServerError': 'Lỗi máy chủ',
    'ServerUnknownError': 'Lỗi không xác định từ server',
  };

  static String get(String? message) {
    if (message == null) {
      return 'Đã xảy ra lỗi không xác định vui lòng thử lại sau';
    }
    return _error[message] ?? message;
  }
}
