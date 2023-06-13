import 'package:celean_architecture_tdd/Auth/presentation/controller/login_bloc.dart';
import 'package:celean_architecture_tdd/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Auth/presentation/pages/signIn/sign_in_view.dart';
import 'ingection.dart ' as di;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();// Todo question
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (_) => di.sl<LoginBloc>(),
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SignInView(),
          ),
        );
      }
    );
  }
}

