import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  const TextCustom({Key? key ,this.fontWeight, required this.text , this.fontSize = 17, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize!.sp,
          color: textColor,
        fontWeight: fontWeight
      ),
    );
  }
}
