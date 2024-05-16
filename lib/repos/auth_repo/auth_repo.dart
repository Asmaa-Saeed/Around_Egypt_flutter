import 'package:dartz/dartz.dart';

import '../../errors/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, Map<String, dynamic>>> login(
      {required Map<String, dynamic>? userData}); // no imp
  Future<Either<Failure, Map<String, dynamic>>> register(
      {required Map<String, dynamic> userData});
}
// no object 
