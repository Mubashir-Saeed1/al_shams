import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  AlTextButton({required this.onPressed, required this.text});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.transparent)),
        child: Text(
          text,
          style: TextStyle(fontSize: 12.sp, color: AlColors.buttonColor),
        ));
  }
}
