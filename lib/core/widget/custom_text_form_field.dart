import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.validator,
    this.obscureText = false,
    this.iconSuffix,
    this.suffixIconOnPressed,
    this.color = Colors.white,
    this.colorHint = Colors.white,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final IconData? iconSuffix;
  final VoidCallback? suffixIconOnPressed;
  final Color color ;
  final Color? colorHint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.white,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
        hintText: hintText,
        hintStyle:  TextStyle(
          color: colorHint,
        ),
        labelText: labelText,

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3.w,
            color: color,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3.w,
            color: color,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: suffixIconOnPressed,
          icon: Icon(
            iconSuffix,
            color: AppColors.primary,
          ),
        ),
      ),

    );
  }
}
