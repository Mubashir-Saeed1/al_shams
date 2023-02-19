import 'package:al_shams/controllers/general_controller.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AlProduct extends StatelessWidget {
  final _generalController = Get.find<GeneralController>();
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Item Name',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: AlColors.textColor)),
                      Text(
                        'Item Type',
                        style: TextStyle(
                            fontSize: 12.sp, color: AlColors.subtitleColor),
                      ),
                      RatingBarIndicator(
                        rating: 3,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 20.sp,
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Rs. 450',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AlColors.textColor,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                        onPressed: () {
                          _generalController.isFav.value =
                              !_generalController.isFav.value;
                        },
                        icon: Obx(() => Icon(_generalController.isFav.value
                            ? Icons.favorite
                            : Icons.favorite_border, color: AlColors.buttonColor,))),
                  )
                ],
              ),
            );
  }
}