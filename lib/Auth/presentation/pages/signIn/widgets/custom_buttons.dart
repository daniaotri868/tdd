
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/color_manager.dart';
import '../../../../../core/size_config.dart';
import 'custom_text.dart';
class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, required this.text, this.btnColor, this.textColor, this.onTap}) : super(key: key);
  final String text;
  final Color? btnColor;
  final Color? textColor;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 59.h,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(8).w
        ),
        child: Center(
          child: TextCustom(
            text:text ,
            textColor:textColor ,
          ),
        ),
      ),
    );
  }
}
class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key, this.onTap, this.iconData, this.color})
      : super(key: key);
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 59.h,
        width: 68.w,
        decoration: BoxDecoration(
            color: ColorManager.secodnary,
            borderRadius: BorderRadius.circular(8).w,
            border: Border.all(
              color: Colors.transparent,
            )),
        child:
            Icon(
              iconData,
              color: color,
            ),
        ),
    );
  }
}