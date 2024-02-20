class Enviroment {
  Enviroment._();

  static String get baseUrl {
    return const String.fromEnvironment('BASE_URL');
  }

  static String get permission {
    return const String.fromEnvironment('PERMISSION');
  }
}
