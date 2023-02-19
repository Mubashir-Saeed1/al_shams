import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
  RxInt homeIndex = 0.obs;
  TextEditingController homeSearchController = TextEditingController();
  RxBool isFav = false.obs;
}
