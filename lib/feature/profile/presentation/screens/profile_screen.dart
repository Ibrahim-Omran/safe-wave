import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widget/show_text_widget.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    AppAssets.profileIcon,
                  ),
                  Image.asset(
                    AppAssets.lineIcon,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const ShowTextWidget(
                    width: 250,
                    title: AppStrings.name,
                    subTitle: ': zaid',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ShowTextWidget(
                    width: 250,
                    title: AppStrings.email,
                    subTitle: ': zaid@gmail.com',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const ShowTextWidget(
                    width: 250,
                    title: AppStrings.devices,
                    subTitle: '2',
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
