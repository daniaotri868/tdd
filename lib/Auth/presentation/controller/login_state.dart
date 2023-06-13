part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class ErrorLoginState extends LoginState {
  final String message;
  const ErrorLoginState(this.message);

  @override
  List<Object> get props => [message];
}
class LoginInitial extends LoginState {}

class SuccessfulLoginState extends LoginState {
  final String message;
   const SuccessfulLoginState(this.message);

  @override
  List<Object> get props => [message];
}
class LoadingLoginState extends LoginState {}

