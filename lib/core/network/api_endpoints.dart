class ApiEndpoints {
  // Auth endpoints
  static const _auth = '/auth';
  static const getMe = '$_auth/me';
  static const register = '$_auth/register';
  static const driverLogin = '$_auth/driver/login';
  static const partnerLogin = '$_auth/partner/login';
  static const forgotPasswordRequest = '$_auth/forgot-password/request';
  static const forgotPasswordVerify = '$_auth/forgot-password/verify';
  static const forgotPasswordReset = '$_auth/forgot-password/reset';
  static const refreshToken = '$_auth/refresh';

  // User endpoints
  static const _user = '/users';
  static const changePassword = '$_user/change-password';
  static const deleteAccount = '$_user/me';
  static const updateAccount = '$_user/id';

  // subscriptions
  static const subscriptions = '/subscriptions';
  static const renewAccount = '$subscriptions/pay';

  // Wallet endpoints
  static const _wallet = '/wallet';
  static const walletUser = '$_wallet/user';
  static const walletWithdraw = '$_wallet/withdraw';
  static const walletDeposit = '$_wallet/deposit';
  static const walletTransfer = '$_wallet/transfer';

  // Wallet history
  static const _walletHistory = '/wallet-history';
  static const walletHistoryUser = '$_walletHistory/user';

  // booking activity history
  static const bookingActivityHistoryUser = '$walletHistoryUser/trip-instant';
  static const getScheduledRides = '$walletHistoryUser/trip-deposit';

  static const _trip = '/trip';
  static const trip = _trip;
  static const tripBookAirport = '$_trip/airport';
  static const tripBookTour = '$_trip/tour';
  static const tripBookingNow = '$_trip/instant';

  //location
  static const location = '/location';

  static const _chats = '/chats';
  static const chatRoom = '$_chats/room';
}
