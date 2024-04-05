import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/core/utils/app_colors.dart';
import 'package:safe_wave/core/widget/custom_buttom.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/widget/custom_text_form_field.dart';

class AddBoardScreen extends StatelessWidget {
  const AddBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            AppAssets.appLogo,
            width: 150.w,
            height: 300.h,
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 175.h,
              ),
              Image.asset(
                AppAssets.addBoard,
              ),
              Image.asset(
                AppAssets.lineIcon,
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: TextEditingController(),
                      hintText: 'SSID',
                      color: AppColors.liteBlue,
                      colorHint: AppColors.liteBlue,

                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomTextFormField(
                      controller: TextEditingController(),
                      hintText: 'Password',
                      color: AppColors.liteBlue,
                      colorHint: AppColors.liteBlue,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CustomButton(
                      width: 210.w,
                      onPressed: () {},
                      text: 'Add',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
