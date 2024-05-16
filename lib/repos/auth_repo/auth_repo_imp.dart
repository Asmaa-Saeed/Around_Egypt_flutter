import 'package:around_egypt/services/auth_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../errors/failures.dart';
import 'auth_repo.dart';

class AuthRepoImp implements AuthRepo {
  @override
  Future<Either<Failure, Map<String, dynamic>>> login(
      {required Map<String, dynamic>? userData}) async {
    try {
      Map<String, dynamic> result = await AuthService().login(userData);
      return right(result);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> register(
      {required Map<String, dynamic> userData}) async {
    try {
      Map<String, dynamic> result = await AuthService().registerUser(userData);
      return right(result);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
