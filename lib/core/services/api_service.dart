import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://api.example.com',
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  Dio get dio => _dio;

  ApiService() {
    // Dio ayarları
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Authorization header ekle
        return handler.next(options);
      },
    ));
  }
}
