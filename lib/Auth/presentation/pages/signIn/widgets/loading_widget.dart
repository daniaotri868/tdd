import 'package:celean_architecture_tdd/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RSizedBox(
        height: 30.h,
        width: 30.w,
        child: CircularProgressIndicator(
          color: ColorManager.primary,
        ),
      ),
    );
  }
}
