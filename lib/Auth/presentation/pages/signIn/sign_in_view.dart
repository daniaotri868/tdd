import 'package:celean_architecture_tdd/Auth/presentation/controller/login_bloc.dart';
import 'package:celean_architecture_tdd/Auth/presentation/pages/signIn/widgets/loading_widget.dart';
import 'package:celean_architecture_tdd/Auth/presentation/pages/signIn/widgets/message_display_widget.dart';
import 'package:celean_architecture_tdd/Auth/presentation/pages/signIn/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if(state is LoadingLoginState){
            print("Lodddding");
            return  const LoadingWidget();
          }else if(state is ErrorLoginState){
            print("ERRRRRRROR");
            return MessageDisplayWidget(message:state.message);
          }else if(state is  SuccessfulLoginState){
            print("Succcccccfful");
            return  SignInPage();
          }
          return  SignInPage();

        }
      ),
    );
  }
}
