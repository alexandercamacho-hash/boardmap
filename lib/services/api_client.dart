import '../constants/app_constants.dart';

class ApiClient {
  const ApiClient({this.baseUrl = AppConstants.apiBaseUrl});

  final String baseUrl;

  Future<Map<String, dynamic>> healthCheck() async {
    throw UnimplementedError(
      'REST client is planned for a later activity; no API calls at Activity 8.',
    );
  }
}
