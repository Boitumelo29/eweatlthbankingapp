import 'dart:convert';
import 'package:eweatlthbankingapp/features/user/user_login/model/model.dart';
import 'package:http/http.dart' as http;

import '../features/user/user_sign_up/model/model.dart';

class ApiService {
  final String baseUrl = "https://94a9-41-193-50-201.ngrok-free.app/api";

  Future<http.Response> fetchUser(String accountId) async {
    final url = Uri.parse('$baseUrl/accounts/$accountId');
    final response =
        await http.get(url, headers: {'Content-Type': 'application/json'});
    return response;
  }

  Future<http.Response> registerUser(RegisterModel registerModel) async {
    final url = Uri.parse('$baseUrl/accounts/register');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(registerModel.toJson()),
    );
    return response;
  }

  Future<http.Response> loginUser(LoginModel loginModel) async {
    final url = Uri.parse('$baseUrl/accounts/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(loginModel.toJson()),
    );
    return response;
  }
}
