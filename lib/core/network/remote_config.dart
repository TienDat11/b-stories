// Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RemoteConfig {
  static final kBaseURL = '${dotenv.env['BASE_URL']}';
  static final kMap4DBaseURL = '${dotenv.env['MAP_4D_BASE_URL']}';
  static final kMap4DAPIKey = '${dotenv.env['MAP_4D_API_KEY']}';

  static final locationToken = '${dotenv.env['MAP_ACCESS_TOKENS']}';
  static final kPreviewEnabled =
      bool.parse('${dotenv.env['RESPONSIVE_ENABLED']}');
}
