import 'package:al_shams/controllers/auth_controller.dart';
import 'package:al_shams/utils/custom_widgets/al_textfield.dart';
import 'package:al_shams/utils/custom_widgets/al_button.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AlColors.appBarColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AlColors.textColor),
      ),
      backgroundColor: AlColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: Get.height * 0.1),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Forgot Password',
                    style: TextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: Get.height * 0.08,
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(fontSize: 12.sp, color: AlColors.textColor),
              ),
            ),
            SizedBox(height: 10.h),
            AlTextField(
                  validator: () {},
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _authController.forgotPasswordController.clear();
                    },
                    icon: Icon(Icons.close),
                  ),
                  controller: _authController.forgotPasswordController,
                  keyboardType: TextInputType.emailAddress,
                ),
            SizedBox(height: 14.h),
            AlButton(text: 'Send Link', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
