import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget alTitleText(String text) {
  return Padding(
    padding: EdgeInsets.only(left: 10.w, top: Get.height * 0.1),
    child: Align(alignment: Alignment.centerLeft,
      child: Text(text, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),)),
  );
}
