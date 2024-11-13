import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/color_constants.dart';
import '../constants/font_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.ontap, required this.title, this.color=blue});

  final VoidCallback? ontap;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 25.sp,
        width: 65.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: AppColors.white, width: 1.5),
            color: color,
            ),
        child: Center(
            child: Text(
          title,
          style: subtitleStyle.copyWith(fontSize: 15.sp, color: white),
        )),
      ),
    );
  }
}

