import 'package:al_shams/controllers/auth_controller.dart';
import 'package:al_shams/controllers/general_controller.dart';
import 'package:al_shams/utils/custom_widgets/al_text_button.dart';
import 'package:al_shams/utils/custom_widgets/al_textfield.dart';
import 'package:al_shams/utils/custom_widgets/al_button.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/utils/title_text_style.dart';
import 'package:al_shams/views/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final _authController = Get.find<AuthController>();
  final _generalController = Get.put(GeneralController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AlColors.appBarColor,
        elevation: 0,
      ),
      backgroundColor: AlColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10.w, top: Get.height * 0.1),
                child: alTitleText('Sign Up')),
            SizedBox(
              height: Get.height * 0.08,
            ),
            AlTextField(
              hintText: 'Enter your name',
              labelText: 'Name',
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              controller: _authController.signUpNameController,
              validator: () {},
            ),
            SizedBox(height: 10.h),
            AlTextField(
              validator: () {},
              hintText: 'Enter your email',
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress,
              controller: _authController.signUpEmailController,
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
                  controller: _authController.signUpPasswordController,
                )),
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 12.sp, color: AlColors.textColor),
                ),
                AlTextButton(
                    onPressed: () {
                      Get.to(() => LoginScreen());
                    },
                    text: 'Login instead')
              ],
            ),
            SizedBox(height: 10.h),
            AlButton(text: 'Sign Up', onPressed: () {}),
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
                    ' Sign up',
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
