import 'package:al_shams/controllers/auth_controller.dart';
import 'package:al_shams/utils/custom_widgets/al_text_button.dart';
import 'package:al_shams/utils/custom_widgets/al_textfield.dart';
import 'package:al_shams/utils/custom_widgets/al_button.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/utils/title_text_style.dart';
import 'package:al_shams/views/forgot_password_screen.dart';
import 'package:al_shams/views/navigation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
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
            alTitleText('Sign In'),
            SizedBox(
              height: Get.height * 0.08,
            ),
            SizedBox(height: 10.h),
            AlTextField(
              validator: () {},
              hintText: 'Enter your email',
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress,
              controller: _authController.signInEmailController,
            ),
            SizedBox(height: 10.h),
            Obx(() => AlTextField(
                  validator: () {},
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  isPassword: _authController.isPasswordVisible.value,
                  suffixIcon: IconButton(
                      onPressed: () {
                        _authController.isPasswordVisible.value =
                            !_authController.isPasswordVisible.value;
                      },
                      icon: _authController.isPasswordVisible.value
                          ? Icon(CupertinoIcons.eye_slash)
                          : Icon(CupertinoIcons.eye)),
                  controller: _authController.signInPasswordController,
                )),
            SizedBox(height: 6.h),
            Align(
              alignment: Alignment.centerRight,
              child: AlTextButton(
                text: 'Forgot your password? ',
                onPressed: () {
                  Get.to(() => ForgotPasswordScreen());
                },
              ),
            ),
            SizedBox(height: 10.h),
            AlButton(
                text: 'Sign In',
                onPressed: () {
                  Get.to(() => NavigationScreen());
                }),
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google_icon.png',
                    height: 40.sp,
                    width: 40.sp,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    ' Sign In',
                    style:
                        TextStyle(color: AlColors.textColor, fontSize: 14.sp),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
