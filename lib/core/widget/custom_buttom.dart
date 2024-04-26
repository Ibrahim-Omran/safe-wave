import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 48,
    this.width = double.infinity,
    required this.onPressed,
    this.background,
    required this.text,
    this.fontSize,
    this.fontWeight,
  });

  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final Color? background;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height!.h,
      width: width!.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 5, // تعديل ارتفاع الظل حسب الرغبة
          backgroundColor: background ?? AppColors.liteBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
            ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                fontSize: fontSize?.sp,
                color: AppColors.white,
                fontWeight: fontWeight,
              ),
        ),
      ),
    );
  }
}
