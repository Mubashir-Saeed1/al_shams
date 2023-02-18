import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  AlButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        alignment: Alignment.center,
        width: Get.width * 0.9,
        height: 24.h,
        decoration: BoxDecoration(
            color: AlColors.buttonColor,
            borderRadius: BorderRadius.circular(30.r)),
        child: Text(
          text,
          style: TextStyle(fontSize: 14.sp, color: AlColors.textFieldColor),
        ),
      ),
    );
  }
}
