import 'package:intl/intl.dart';

class DatetimeUtils {
  static const String _pattern = 'dd/MM/yyyy HH:mm';

  /// Format theo pattern mặc định, mặc định convert về local.
  static String formatDateTime(DateTime? dateTime, {bool toLocal = true}) {
    final dt = (dateTime ?? DateTime.now());
    final target = toLocal ? dt.toLocal() : dt;
    return DateFormat(_pattern).format(target);
  }

  /// Parse CHẶT theo pattern 'dd/MM/yyyy HH:mm' (local time).
  static DateTime parseDateTime(String dateTimeString) {
    try {
      return DateFormat(_pattern).parseStrict(dateTimeString);
    } catch (_) {
      throw FormatException('Định dạng ngày giờ không hợp lệ: $dateTimeString');
    }
  }

  /// Parse LINH HOẠT: thử pattern custom, nếu fail thì thử ISO-8601 (UTC/offset).
  static DateTime? tryParseFlexible(String input, {bool toLocal = true}) {
    // 1) thử theo pattern custom
    try {
      final dt = DateFormat(_pattern).parseStrict(input);
      return toLocal ? dt.toLocal() : dt;
    } catch (_) {/* bỏ qua */}
    // 2) thử ISO-8601
    try {
      final dt = DateTime.parse(input);
      return toLocal ? dt.toLocal() : dt;
    } catch (_) {
      return null;
    }
  }

  /// Format "dd/MM/yyyy HH:mm - dd/MM/yyyy HH:mm" từ chuỗi ISO range "start - end".
  static String formatRentalPeriod(String rentalPeriodRaw) {
    try {
      final parts = rentalPeriodRaw.split(' - ');
      if (parts.length != 2) return rentalPeriodRaw;

      final start = DateTime.parse(parts[0].trim()).toLocal();
      final end = DateTime.parse(parts[1].trim()).toLocal();

      final f = DateFormat(_pattern);
      return '${f.format(start)} - ${f.format(end)}';
    } catch (_) {
      return rentalPeriodRaw; // fallback
    }
  }

  /// 12h + AM/PM (mặc định về local).
  static String formatHourWithAmPm(DateTime dateTime, {bool toLocal = true}) {
    final dt = toLocal ? dateTime.toLocal() : dateTime;
    return DateFormat('hh:mm a', 'en_US').format(dt);
  }

  /// Nhận ISO string (tự hiểu 'Z' là UTC), format 12h + AM/PM.
  static String formatIsoHourWithAmPm(String isoString, {bool toLocal = true}) {
    final dt = DateTime.parse(isoString);
    return formatHourWithAmPm(dt, toLocal: toLocal);
  }
}
