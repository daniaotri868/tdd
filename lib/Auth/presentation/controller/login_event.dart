part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}
class LoginMainEvent extends LoginEvent{
  final String dialCode;
  final String phoneNumber;
  const LoginMainEvent({ required this.dialCode, required this.phoneNumber});
  @override
  List<Object> get props => [dialCode, phoneNumber];
}
