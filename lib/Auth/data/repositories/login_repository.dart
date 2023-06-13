

import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failure.dart';
import '../../domain/repositories/base_repository.dart';
import '../data_sources/remote_data_source.dart';

class LoginRepository implements BaseLoginRepository {
  final BaseRemoteDataSource baseRemoteDataSource;
  LoginRepository(this.baseRemoteDataSource);

  @override
  Future<Either<Failure,Unit>> getLogin(String dialCode, String phoneNumber) async {
    final result = await baseRemoteDataSource.getLogin(dialCode, phoneNumber);
    try {
      return Right(result!);
    } on ServerException catch (failure) {
      return Left(ServerFailure());
    }
  }

}
