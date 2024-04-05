import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_wave/core/utils/app_assets.dart';
import 'package:safe_wave/core/utils/app_strings.dart';

import '../../../../core/widget/show_text_widget.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

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
                AppAssets.homeIcon,
                width: 300.w,
                height: 190.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              const ShowTextWidget(
                title: AppStrings.behaviors,
                subTitle: '50',
              ),
              SizedBox(
                height: 20.h,
              ),
              const ShowTextWidget(
                title: AppStrings.highActive,
                subTitle: '50',
              ),
              SizedBox(
                height: 20.h,
              ),
              const ShowTextWidget(
                title: AppStrings.persons,
                subTitle: '50',
              ),
            ],
          ),
        )
      ],
    ));
  }
}
