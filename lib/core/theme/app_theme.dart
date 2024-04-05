import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    //scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.white,

    //appBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
    ),

    //text theme
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle(),
    ),

    //button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    ),

    // text field
    inputDecorationTheme: InputDecorationTheme(

      //enabled Border
      enabledBorder:  UnderlineInputBorder(
        borderSide: BorderSide(
          width: 3.w,
          color: AppColors.white,
        ),
      ),

      //focused Border
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 3.w,
          color: AppColors.white,
        ),
      ),

      //error Border
      // errorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(8),
      //   // borderSide: const BorderSide(
      //   //  color: AppColors.grey,
      //   // ),
      // ),

      //hint text
      hintStyle: boldStyle(color: AppColors.black, fontSize: 16.sp),

      // filled: true,
      // fillColor: AppColors.backGroundTextField,
    ),

    // text button Style ..
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          AppColors.black,
        ),
        textStyle: MaterialStateProperty.all(
          boldStyle(color: AppColors.black, fontSize: 16.sp),
        ),
      ),
    ),
  );
}
