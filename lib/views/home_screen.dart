import 'package:al_shams/controllers/general_controller.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/utils/custom_widgets/al_product.dart';
import 'package:al_shams/utils/custom_widgets/al_textfield.dart';
import 'package:al_shams/utils/title_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final _generalController = Get.find<GeneralController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        alTitleText('Al Shams Products'),
        SizedBox(
          height: 10.h,
        ),
        AlTextField(
          validator: () {},
          hintText: 'Enter item name',
          labelText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: AlColors.textColor,
            ),
          ),
          controller: _generalController.homeSearchController,
          keyboardType: TextInputType.text,
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          children: [
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
            AlProduct(),
          ],
        ))
      ],
    );
  }
}
