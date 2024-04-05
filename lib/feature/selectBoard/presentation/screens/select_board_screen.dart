import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/core/utils/app_colors.dart';
import 'package:safe_wave/core/widget/show_text_widget.dart';

import '../../../../core/utils/app_assets.dart';

class SelectBoardScreen extends StatelessWidget {
  const SelectBoardScreen({super.key});

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
                AppAssets.selectBoard,
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

                    const ShowTextWidget(
                        title: 'Select Rom',
                        subTitle: ''
                    ),

                    SizedBox(
                      height: 15.h,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Current Behaviors:',
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blue,
                        ),),
                    ),

                    SizedBox(
                      height: 15.h,
                    ),

                    Container(
                      width: 350.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: AppColors.liteBlue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(24)
                      ),
                    )

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
