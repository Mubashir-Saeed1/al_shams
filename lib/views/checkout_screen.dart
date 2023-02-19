import 'package:al_shams/utils/custom_widgets/al_address_card.dart';
import 'package:al_shams/utils/custom_widgets/al_button.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/utils/title_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AlColors.appBarColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AlColors.textColor),
      ),
      backgroundColor: AlColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 14.h),
        child: Column(
          children: [
            alTitleText('Checkout'),
            SizedBox(height: 14.h),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Shipping Address',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: AlColors.textColor))),
            SizedBox(height: 6.h),
            AlAddressCard(),
            SizedBox(height: 10.h),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Payment Method',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: AlColors.textColor))),
            SizedBox(height: 6.h),
            Image.asset(
              'assets/images/cod_image.png',
              height: Get.height * 0.14,
              width: Get.width,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10.h),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Payment Details',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: AlColors.textColor))),
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order',
                    style: TextStyle(
                        color: AlColors.subtitleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800)),
                Text(
                  'Rs. 450',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AlColors.textColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery',
                    style: TextStyle(
                        color: AlColors.subtitleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800)),
                Text(
                  'Rs. 150',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AlColors.textColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: TextStyle(
                        color: AlColors.subtitleColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800)),
                Text(
                  'Rs. 550',
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AlColors.textColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            AlButton(text: 'Checkout', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
