import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:petology/utils/constants.dart';

import '../models/user.dart';

class ApiService {
  Future<String> registerUser(User data) async {
    String accessToken = "";
    final http.Response response = await http.post(
      Uri.parse(kAuthRegister),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
      },
      body: data.toRawJson(),
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }

  Future<String> loginUserWithEmail(String email, String password) async {
    String accessToken = "";
    final http.Response response = await http.post(
      Uri.parse(kAuthLogin),
      headers: {
        "accept": "application/json",
        "Content-Type": "application/json",
      },
      body: json.encode(
        {
          "email": email,
          "password": password,
        },
      ),
    );
    if (response.statusCode == 200) {
      accessToken = jsonDecode(response.body)["accessToken"];
    }
    return accessToken;
  }
}
