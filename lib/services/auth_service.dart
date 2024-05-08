import 'package:dio/dio.dart';

class AuthService {
  final Dio _dio = Dio();
  String baseUrl = 'http://192.168.1.5:8003/api/v1/auth';
  login(String email, String password) async {
    Response response = await _dio.post(
      '$baseUrl/login',
      data: {'email': email, 'password': password},
    );
    print(response.data);
    return response.data;
  }

  registerUser(Map<String, dynamic>? userData) async {
    Response response = await _dio.post(
      '$baseUrl/signup',
      data: userData,
    );
    print(response.data);
    return response.data;
  }
}
