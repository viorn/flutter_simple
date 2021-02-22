import 'dart:io';

import 'package:socfr/data/dataproviders/auth_response.dart';
import 'package:http/http.dart' as http;

abstract class Rest {
  static HttpClient _client = new HttpClient();
  static String _baseUrl = "http://185.65.202.76:8888";
  static Future<AuthResponse> auth(String login, String password) async {
    String query =
        Uri(queryParameters: {"login": login, "password": password}).query;
    http.Response response =
        await http.post(Uri.parse("$_baseUrl/public/testAuth?$query"));

    return AuthResponse();
  }
}
