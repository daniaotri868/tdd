import 'package:dartz/dartz.dart';
import '../../../core/error/failure.dart';
import '../repositories/base_repository.dart';

class LoginUseCase {
  final BaseLoginRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure,Unit>> call(String dialCode, String phoneNumber) async {
    return await repository.getLogin(dialCode,phoneNumber);
  }
}
