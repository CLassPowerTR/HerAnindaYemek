import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  // Kullanıcı oturum bilgileri
  String? _token;
  String? _currentUser;

  String? get token => _token;
  String? get currentUser => _currentUser;

  Future<void> login(String username, String password) async {
    // Giriş işlemi
    // _token ve _currentUser'ı güncelle
    notifyListeners();
  }

  Future<void> logout() async {
    // Çıkış işlemi
    // _token ve _currentUser'ı sıfırla
    notifyListeners();
  }

  Future<void> fetchCurrentUser() async {
    // Mevcut kullanıcıyı getir
    notifyListeners();
  }

  Future<void> register(String username, String password, String email) async {
    // Kayıt işlemi
    notifyListeners();
  }
}
