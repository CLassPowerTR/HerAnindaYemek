import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RemoteAuthService {
  final Dio _dio;
  final FlutterSecureStorage _storage;

  RemoteAuthService(this._dio, this._storage);

  Future<void> login(String username, String password) async {
    // API çağrısı yap
    // JWT token'ı al ve sakla
  }

  Future<void> register(String username, String password) async {
    // API çağrısı yap
  }

  Future<void> getCurrentUser() async {
    // Kullanıcı bilgilerini al
  }
}
