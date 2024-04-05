
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class ShowTextWidget extends StatelessWidget {
   const ShowTextWidget({
    super.key, required this.title, required this.subTitle, this.width = 201 ,
  });

  final String title ;
  final String subTitle ;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: 60.h,
      decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(24)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
