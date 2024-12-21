import 'package:flutter/material.dart';
import 'package:login_testing/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  String? _token;
  String? get token => _token;
  bool get isAuthenticated => _token != null;

  Future<void> login(String username, String password) async {
    try {
      final result = await _apiService.login(username, password);
      _token = result['accessToken']; // Ambil accessToken dari respons API
      final refreshToken =
          result['refreshToken']; // Ambil refreshToken (opsional)

      if (_token == null || _token!.isEmpty) {
        throw Exception("Access token tidak valid.");
      }

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', _token!); // Simpan accessToken
      if (refreshToken != null) {
        await prefs.setString(
            'refreshToken', refreshToken); // Simpan refreshToken
      }

      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<void> logout() async {
    _token = null;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    notifyListeners();
  }

  Future<void> register(
      String name, String email, String password, String avatar) async {
    try {
      await _apiService.register(name, email, password, avatar);
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

  Future<bool> isEmailAvailable(String email) async {
    return await _apiService.isEmailAvailable(email);
  }

  Future<void> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('token')) {
      _token = prefs.getString('token');
    }
    notifyListeners();
  }
}
