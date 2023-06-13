import 'package:celean_architecture_tdd/Auth/data/repositories/login_repository.dart';
import 'package:celean_architecture_tdd/Auth/domain/use_cases/login_use_case.dart';
import 'package:celean_architecture_tdd/Auth/presentation/controller/login_bloc.dart';
import 'package:get_it/get_it.dart';

import 'Auth/data/data_sources/remote_data_source.dart';
import 'Auth/domain/repositories/base_repository.dart';


final sl = GetIt.instance;
Future <void> init() async{
  sl.registerFactory(() => LoginBloc(loginUseCase: sl()));
  sl.registerLazySingleton(() =>  LoginUseCase(sl()));
  sl.registerLazySingleton<BaseLoginRepository>(() => LoginRepository(sl()));
sl.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
}