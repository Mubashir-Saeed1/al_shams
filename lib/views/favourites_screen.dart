import 'package:al_shams/utils/custom_widgets/al_product.dart';
import 'package:al_shams/utils/title_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavouritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: Get.height * 0.1, left: 10.w),
          child: alTitleText('Favourites'),
        ),
        SizedBox(
          height: 10.h,
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          children: [
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
            AlProduct(isFavourite: true),
          ],
        ))
      ],
    );
  }
}
