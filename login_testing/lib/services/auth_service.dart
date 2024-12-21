import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String loginURL = 'https://dummyjson.com/auth/login';
  final String registerURL = 'https://api.escuelajs.co/api/v1/users/';
  final String verifikasiEmail =
      'https://api.escuelajs.co/api/v1/users/is-available';

  Future<Map<String, dynamic>> login(String username, String password) async {
  final response = await http.post(
    Uri.parse(loginURL),
    headers: {
      "Content-Type": "application/json",
    },
    body: jsonEncode({
      "username": username,
      "password": password,
    }),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    if (data.containsKey('accessToken')) {
      return {
        "accessToken": data['accessToken'],
        "refreshToken": data['refreshToken'],
      }; // Ambil accessToken dan refreshToken
    } else {
      throw Exception("Response tidak mengandung accessToken.");
    }
  } else {
    final errorData = jsonDecode(response.body);
    throw Exception(errorData['message'] ?? 'Login failed');
  }
}


  Future<void> register(String name, String email, String password, String avatar) async {
    final responseRegister = await http.post(Uri.parse(registerURL), body: {
      'name': name,
      'email': email,
      'password': password,
      'avatar': avatar,
    });

    if (responseRegister.statusCode != 201) {
      throw Exception('Registration Failed');
    }
  }

  Future<bool> isEmailAvailable(String email) async {
    final responseEmail =
        await http.post(Uri.parse(verifikasiEmail), body: {'email': email});

    if (responseEmail.statusCode == 200) {
      return jsonDecode(responseEmail.body)['isAvailable'];
    } else {
      throw Exception('Email verification failed');
    }
  }
}
