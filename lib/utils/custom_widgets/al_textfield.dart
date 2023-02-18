import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlTextField extends StatelessWidget {
  final Function validator;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  AlTextField(
      {required this.validator,
      required this.controller,
      this.hintText,
      this.labelText,
      this.textCapitalization,
      this.isPassword = false,
      this.keyboardType,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(10.r),
        color: AlColors.textFieldColor,
        elevation: 1,
        child: TextFormField(
          controller: controller,
          validator: validator(),
          decoration: InputDecoration(
              hintText: hintText ?? null,
              labelText: labelText ?? null,
              labelStyle: TextStyle(color: AlColors.textColor),
              suffixIcon: suffixIcon ?? null,
              suffixIconColor: AlColors.textColor,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.r))),
          cursorColor: AlColors.textColor,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          keyboardType: keyboardType ?? TextInputType.text,
          obscureText: isPassword,
        ),
      ),
    );
  }
}
