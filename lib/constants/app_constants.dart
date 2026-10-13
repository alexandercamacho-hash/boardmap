class AppConstants {
  AppConstants._();

  static const String appTitle = 'Boardmap';
  static const String appTagline = 'Find and explore places on the map.';
  static const String footerText = '© 2026 Boardmap';
  static const String loginFooterText = 'Boardmap • IT 110 Semester Project';

  static const String apiBaseUrl = 'http://localhost:8000/api';
  static const Duration apiTimeout = Duration(seconds: 10);

  static const int minPasswordLength = 8;
}
