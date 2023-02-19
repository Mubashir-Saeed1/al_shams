import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/utils/custom_widgets/al_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlAddressCard extends StatelessWidget {
  final bool isCheckout;
  AlAddressCard({this.isCheckout = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
          color: AlColors.textFieldColor,
          borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User Name',
                  style: TextStyle(
                      color: AlColors.textColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 4.h),
              Container(
                width: Get.width * 0.6,
                child: Text(
                    "Complete Delivery Address will be shown here.... Like street No. 12 etc...",
                    style:
                        TextStyle(color: AlColors.textColor, fontSize: 12.sp)),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: AlTextButton(
                onPressed: () {}, text: isCheckout ? 'Change' : 'Edit'),
          )
        ],
      ),
    );
  }
}
