import 'dart:io';

abstract class Rest {
  static HttpClient _client = new HttpClient();
  static String _baseUrl = "http://185.65.202.76:8888";
  static void auth() {
    String query =
        Uri(queryParameters: {"login": "test123", "password": "qwer1234"})
            .query;
    _client.postUrl(Uri.parse("$_baseUrl/public/testAuth?$query"));
  }
}
