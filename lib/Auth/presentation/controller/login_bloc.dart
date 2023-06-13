import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/use_cases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async{
    if(event is LoginMainEvent){
      emit(LoadingLoginState());
      final failureOrSuccessful = await loginUseCase(event.dialCode,event.phoneNumber);

      emit(
          failureOrSuccessful.fold((l) => const ErrorLoginState("ERROR") ,
            (r) => SuccessfulLoginState("Successful"))
      );

    }
    });
  }
}
