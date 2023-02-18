// ignore_for_file: unused_field
import 'dart:async';
import 'package:al_shams/controllers/auth_controller.dart';
import 'package:al_shams/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 390),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          home: child,
        );
      },
      child: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => SignUpScreen());
    });
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/logo_without_bg.png'),
    );
  }
}
