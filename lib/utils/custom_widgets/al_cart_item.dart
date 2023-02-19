import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class AlCartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.16,
      width: Get.width,
      margin: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
          color: AlColors.textFieldColor,
          borderRadius: BorderRadius.circular(10.r)),
      padding: EdgeInsets.all(1.h),
      child: Row(
        children: [
          Image.asset(
            'assets/images/clothes_placeholder.png',
            height: Get.height * 0.16,
            width: Get.height * 0.16,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4.h),
              Text('Item Name',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: AlColors.textColor)),
                      SizedBox(height: 4.h),
              Row(
                children: [
                  Text(
                    'Color: ',
                    style: TextStyle(
                        fontSize: 12.sp, color: AlColors.subtitleColor),
                  ),
                  Text('Black  ',
                      style: TextStyle(
                          fontSize: 12.sp, color: AlColors.textColor)),
                  Text(
                    'Size: ',
                    style: TextStyle(
                        fontSize: 12.sp, color: AlColors.subtitleColor),
                  ),
                  Text('L',
                      style:
                          TextStyle(fontSize: 12.sp, color: AlColors.textColor))
                ],
              ),
              SizedBox(height: 10.h),
              Row(children: [
                FloatingActionButton.small(
                  heroTag: 'Decrease',
                  tooltip: 'Decrease Item',
                  onPressed: () {},
                  child: Text('-', style: TextStyle(color: AlColors.textColor, fontSize: 30.sp, fontWeight: FontWeight.w300)),
                  elevation: 2,
                  backgroundColor: AlColors.textFieldColor,
                ),
                Text('  1  ',
                    style: TextStyle(
                        color: AlColors.textColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400)),
                FloatingActionButton.small(
                  heroTag: 'Increase',
                  tooltip: 'Increase Item',
                  onPressed: () {},
                  child: Text('+',
                      style: TextStyle(
                          color: AlColors.textColor, fontSize: 20.sp, fontWeight: FontWeight.w300)),
                  elevation: 2,
                  backgroundColor: AlColors.textFieldColor,
                ),
              ])
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: AlColors.subtitleColor,
                  )),
                  Spacer(),
              Text(
                'Rs. 450',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AlColors.textColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8.h)
            ],
          )
        ],
      ),
    );
  }
}