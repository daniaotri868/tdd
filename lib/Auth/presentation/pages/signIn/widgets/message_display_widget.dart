import 'package:celean_architecture_tdd/Auth/presentation/pages/signIn/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MessageDisplayWidget extends StatelessWidget {
  const MessageDisplayWidget({Key? key, required this.message}) : super(key: key);
   final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      child: Center(
        child: SingleChildScrollView(
          child: TextCustom(text: message,fontSize: 30.sp,
          ),
        ),
      ),
    );
  }
}
