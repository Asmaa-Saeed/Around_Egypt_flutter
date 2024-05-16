import 'package:dio/dio.dart';

class AuthService {
  final Dio _dio = Dio();
  // post , get , put , delete
  String baseUrl = 'http://192.168.1.5:8003/api/v1/auth'; // /login/signup
  login(Map<String, dynamic>? userData) async {
    Response response = await _dio.post(
      '$baseUrl/login',
      data:userData,
    );
    print(response.statusCode);
    print(response.statusMessage);
    return response.data;
  }

  registerUser(Map<String, dynamic>? userData) async {
    Response response = await _dio.post(
      '$baseUrl/signup',
      data: userData,
    );
    print(response.data);
    //return response.data;
  }
}
