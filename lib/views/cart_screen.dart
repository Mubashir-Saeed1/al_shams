import 'package:al_shams/utils/custom_widgets/al_button.dart';
import 'package:al_shams/utils/custom_widgets/al_cart_item.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/utils/title_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        alTitleText('My Cart'),
        SizedBox(height: 10.h),
        Container(
          height: Get.height * 0.64,
          width: Get.width,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            children: [
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
              AlCartItem(),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total Amount',
                  style: TextStyle(
                      color: AlColors.subtitleColor, fontSize: 14.sp)),
              Text(
                'Rs. 450',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AlColors.textColor,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        AlButton(text: 'Checkout', onPressed: () {})
      ],
    );
  }
}
