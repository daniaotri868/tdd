import 'package:celean_architecture_tdd/core/error/failure.dart';
import 'package:dartz/dartz.dart';


abstract class BaseLoginRepository {
  Future<Either<Failure,Unit>> getLogin(String dialCode, String phoneNumber);
}
