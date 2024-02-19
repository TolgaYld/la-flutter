import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  Enviroment._();
  static String get fileName {
    return 'lib/core/common/env/.env.development';
  }

  static String get baseUrl {
    return dotenv.get('BASE_URL');
  }

  static String get permission {
    return dotenv.get('PERMISSION');
  }

  static String get baseUrlWithoutV1 {
    return dotenv.get('BASE_URL_WITHOUT_V1');
  }
}
